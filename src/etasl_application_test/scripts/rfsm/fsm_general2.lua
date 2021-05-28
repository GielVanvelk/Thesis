-- ==============================================================================
-- Author: Cristian Vergara
-- email: <cristian.vergara@kuleuven.be>
-- Definition of the state machine
-- KU Leuven 2020
-- ==============================================================================

require("rtt")
require("rttlib")
-- require("rfsm_timeevent")
--
-- gettime = rtt.getTime
-- rfsm_timeevent.set_gettime_hook(gettime)


--require("rfsm_timeevent")
require("kdlutils")
require "rttros"
require "deployer_utils"
--gettime = rtt.getTime
--rfsm_timeevent.set_gettime_hook(gettime)

gs=rtt.provides()

tc          = rtt.getTC()
depl        = tc:getPeer("Deployer")
etaslcore   = depl:getPeer("etaslcore")
reporter    = depl:getPeer("Reporter")
solver      = depl:getPeer("solver")

depl:import("rtt_ros")
ros = gs:provides("ros")
ros:import("etasl_rtt")
ros:import("rtt_rospack")
rttlib.color = true


simulation = tc:getProperty("simulation"):get()
robot_etasl_dir = tc:getProperty("robot_etasl_dir"):get()
depl_robot_file = tc:getProperty("depl_robot_file"):get()
robot = require(depl_robot_file)
joint_pos = robot.home_joint_positions()

cp=rtt.Variable("ConnPolicy")

-- ====================================== eTaSL components ===================================
-- ====================================== Solver
ros:import("etasl_solver_qpoases")
depl:loadComponent("solver","etasl_solver_qpoases")
solver = depl:getPeer("solver")



-- ====================================== jointstate I/O factories
ros:import("etasl_iohandler_jointstate")
depl:loadComponent("jointstate","Etasl_IOHandler_Jointstate")
jointstate = depl:getPeer("jointstate")



-- ====================================== eTaSL core
ros:import("etasl_rtt")
depl:loadComponent("etaslcore", "etasl_rtt")
-- create LuaComponents
etaslcore = depl:getPeer("etaslcore")
depl:connectPeers("etaslcore","solver")
depl:connectPeers("etaslcore","jointstate")



function driver_particularities()
  if robot.robot_name == "franka_panda" and not simulation then
    local panda = depl:getPeer("panda")
    panda:low_level_velocity()
  end
end

function moving_cartesian_frame_absolute_config(endframe)
    local endpose = rtt.Variable("KDL.Frame")
    endpose.p:fromtab{X =endframe[1] ,Y= endframe[2],Z= endframe[3] }
    endpose.M = rtt.provides("KDL"):provides("Rotation"):RPY(endframe[4] , endframe[5], endframe[6] )
    solver:create_and_set_solver("etaslcore")
    etaslcore:readTaskSpecificationFile(robot_etasl_dir)
    etaslcore:readTaskSpecificationFile(etasl_application_dir.."/scripts/etasl/default_ports.lua")
    etaslcore:readTaskSpecificationFile(etasl_application_dir.."/scripts/etasl/moving_in_task_frame_coordinates.lua")
    etaslcore:set_etaslvar("global.maxvel",0.2)
    etaslcore:set_etaslvar("global.maxacc",0.05)
    etaslcore:set_etaslvar("global.eq_r",0.08)
    etaslcore:set_etaslvar_frame("global.endpose",endpose)
    etaslcore:configure()
    etaslcore:initialize()
    etaslcore:start()
    driver_particularities()
end


etasl_application_dir = rtt.provides("ros"):find("etasl_application_test")
return rfsm.state {
   configured = rfsm.state {
      entry=function()
        -- ================================Configuration for Kuka iiwa: The driver of the iiwa needs to send zero velocities and wait a bit to configure ============
            if robot.robot_name == "kuka_lwr" and not simulation then
              local lwr = depl:getPeer("lwr")
              local port_vel = rttlib.port_clone_conn(lwr:getPort("JointVelocityCommand"))
              depl:import("rtt_motion_control_msgs")
              local vel_values = rtt.Variable("motion_control_msgs.JointVelocities")
              vel_values.names = robot.joint_names()
              vel_values.velocities:fromtab({0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0})
              -- print(vel_values)
              port_vel:write(vel_values)
              rtt.sleep(2,0) --Sleep for 2 seconds
            end
        -- ================================ General configuration ============================

            reporter:configure()
            reporter:start()
          end,
   },

   idle = rfsm.state {
      entry=function()
            solver:create_and_set_solver("etaslcore")
            etaslcore:readTaskSpecificationFile(robot_etasl_dir)
            etaslcore:readTaskSpecificationFile(etasl_application_dir.."/scripts/etasl/default_ports.lua")
            etaslcore:configure()
            etaslcore:initialize()
            etaslcore:start()

      end,
      exit=function()
            etaslcore:stop()
            etaslcore:cleanup()
      end,
   },

   moving_joint_space_1 = rfsm.state {
      entry=function()
            solver:create_and_set_solver("etaslcore")
            etaslcore:readTaskSpecificationFile(robot_etasl_dir)
            etaslcore:readTaskSpecificationFile(etasl_application_dir.."/scripts/etasl/default_ports.lua")
            etaslcore:readTaskSpecificationFile(etasl_application_dir.."/scripts/etasl/moving_jointspace_trap.lua")
            etaslcore:set_etaslvar("global.maxvel",0.5)
            etaslcore:set_etaslvar("global.maxacc",0.5)
            if robot.is_continuous_joints then --If the function exists it modifies it. Otherwise the defaults are used (non continuous)
                  for i=1,#joint_pos do
                        etaslcore:set_etaslvar("global.continuous_j"..i,robot.is_continuous_joints()[i])
                  end
            end
            for i=1,#joint_pos do
                  etaslcore:set_etaslvar("global.end_j"..i,joint_pos[i])
            end
            etaslcore:configure()
            etaslcore:initialize()
            etaslcore:start()
            driver_particularities()
      end,
      exit=function()
            etaslcore:stop()
            etaslcore:cleanup()
      end,
   },

  moving_in_task_frame_coordinates_1 = rfsm.state {
         entry=function()
               solver:create_and_set_solver("etaslcore")
               etaslcore:readTaskSpecificationFile(robot_etasl_dir)
               etaslcore:readTaskSpecificationFile(etasl_application_dir.."/scripts/etasl/default_ports.lua")
               etaslcore:readTaskSpecificationFile(etasl_application_dir.."/scripts/etasl/Force_Regulation.lua")
               etaslcore:set_etaslvar("global.maxvel",0.05)
               etaslcore:set_etaslvar("global.maxacc",0.05)
               etaslcore:set_etaslvar("global.eq_r",0.08)
               etaslcore:set_etaslvar("global.delta_x",0.0)
               etaslcore:set_etaslvar("global.delta_y",0.0)
               etaslcore:set_etaslvar("global.delta_z",0.1)
               etaslcore:configure()
               etaslcore:initialize()
               etaslcore:start()
               driver_particularities()
         end,
         exit=function()
               etaslcore:stop()
               etaslcore:cleanup()
         end,
   },

   moving_spline = rfsm.state {
      entry=function()
            solver:create_and_set_solver("etaslcore")
            etaslcore:readTaskSpecificationFile(robot_etasl_dir)
            etaslcore:readTaskSpecificationFile(etasl_application_dir.."/scripts/etasl/default_ports.lua")
            etaslcore:readTaskSpecificationFile(etasl_application_dir.."/scripts/etasl/Straight_Line.lua")
            etaslcore:set_etaslvar("global.maxvel",0.05)
            etaslcore:set_etaslvar("global.maxacc",0.05)
	          etaslcore:set_etaslvar("global.eq_r",0.08)
	          etaslcore:set_etaslvar("global.delta_x",0.10)
            etaslcore:set_etaslvar("global.delta_y",0.10)
            etaslcore:set_etaslvar("global.delta_z",0)
            etaslcore:configure()
            etaslcore:initialize()
            etaslcore:start()
            driver_particularities()
      end,
      exit=function()
            etaslcore:stop()
            etaslcore:cleanup()
      end,
   },

   target_point = rfsm.state {
      --target_p = {10, 10, 10, 0, 0, 0}
	    entry=function()
        moving_cartesian_frame_absolute_config({-0.475557, 0.027091, 0.11180, 3,14, 0, 3.14})
      end,
      exit=function()
            etaslcore:stop()
            etaslcore:cleanup()
      end,
   },


   rfsm.trans {src="initial", tgt="configured" },


-- ============================== RUN sequence spline ===================================
rfsm.trans {src="configured",                         tgt="moving_joint_space_1",               events={}},
rfsm.trans {src="moving_joint_space_1",               tgt="target_point", events={"e_finished@etaslcore"}},
rfsm.trans {src="target_point",                       tgt="idle", events={"e_finished@etaslcore"}},
}




--rfsm.trans {src="initial",                          tgt="moving_cartesian_recon_init" },
--        rfsm.trans {src="moving_cartesian_recon_init",      tgt="moving_cartesian_down_recon",            events={"e_finished@etaslcore"}},
--        rfsm.trans {src="moving_cartesian_down_recon",      tgt="measure_data_left",                      events={"e_finished@etaslcore"}},
--        rfsm.trans {src="measure_data_left",                tgt="measure_data_forward",                   events={"e_finished@etaslcore"}},
--        rfsm.trans {src="measure_data_forward",             tgt="measure_data_right",                     events={"e_finished@etaslcore"}},
--        rfsm.trans {src="measure_data_right",               tgt="measure_data_forward_2",                 events={"e_finished@etaslcore"}},
--        rfsm.trans {src="measure_data_forward_2",           tgt="check_if_done_recon",                    events={"e_finished@etaslcore"}},
