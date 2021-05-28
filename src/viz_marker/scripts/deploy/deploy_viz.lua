
require("rtt")
require("rttlib")
require("utils")

tc          = rtt.getTC() 
if tc:getName() == "lua" then
  depl=tc:getPeer("Deployer")
  require("kdlutils")
elseif tc:getName() == "Deployer" then
  depl=tc
else
  depl=tc:getPeer("Deployer")
  require("kdlutils")
end

pp=utils.pp

depl:import("rtt_ros")
depl:import("rtt_rosnode")
depl:import("rtt_roscomm")
depl:import("rtt_visualization_msgs")
ros = rtt.provides():provides("ros")

depl:import("viz_marker")


-- deploy marker visualization 
    depl:loadComponent("viz", "Viz_Marker")
    viz = depl:getPeer("viz")
    viz:getProperty("nrofmarkers"):set(1)
    viz:getProperty("frameid"):set("base_link")
    viz:getProperty("type"):set(1)
    viz:getProperty("scalex"):set(0.02)
    viz:getProperty("scaley"):set(0.02)
    viz:getProperty("scalez"):set(0.02)
    viz:getProperty("red"):set(1)
    viz:getProperty("green"):set(0)
    viz:getProperty("blue"):set(0)
    viz:getProperty("alpha"):set(1)
    viz:getProperty("lifetime"):set(1)   -- 1 second: we'll see a trail of cubes of 2cm width


    -- e.g. viz:getProperty("mesh_resource"):set("package://etasl_skills/meshes/obstacle.stl")
    viz:configure()
    depl:setActivity("viz", 0.03, 50, rtt.globals.ORO_SCHED_RT)
    depl:stream("viz.output", ros:topic("/marker_visualizations"))
    viz:start()

-- deploy marker visualization (2)
    depl:loadComponent("viz2", "Viz_Marker")
    viz2 = depl:getPeer("viz2")
    viz2:getProperty("nrofmarkers"):set(1)
    viz2:getProperty("frameid"):set("base_link")
    viz2:getProperty("type"):set(1)
    viz2:getProperty("scalex"):set(0.2)
    viz2:getProperty("scaley"):set(0.3)
    viz2:getProperty("scalez"):set(0.2)
    viz2:getProperty("red"):set(0)
    viz2:getProperty("green"):set(1)
    viz2:getProperty("blue"):set(0)
    viz2:getProperty("alpha"):set(1)
    viz2:getProperty("lifetime"):set(-1)   -- 1 second: we'll see a trail of cubes of 2cm width
    viz2:getProperty("resend"):set(true)   -- 1 second: we'll see a trail of cubes of 2cm width


    -- e.g. viz:getProperty("mesh_resource"):set("package://etasl_skills/meshes/obstacle.stl")
    viz2:configure()
    depl:setActivity("viz2", 0.03, 50, rtt.globals.ORO_SCHED_RT)
    depl:stream("viz2.output", ros:topic("/marker_visualizations"))
    viz2:start()
    loc2 = rttlib.port_clone_conn(viz2:getPort("input1"))
    F=rtt.Variable("KDL.Frame")
    loc2:write(F)


-- this is just to avoid creating another component to generate the data for this small demo:

loc = rttlib.port_clone_conn(viz:getPort("input1"))

function send()
    print("\nI am updating the visualization message for 30 seconds, each 1/2 a second\ntype send() to repeat\n\n")

    for i=1,600, 1 do
        rtt.sleep(0,50000000)  -- 50ms  ( definition: sleep( seconds integer, nanoseconds integer) )
        F=rtt.Variable("KDL.Frame")
        F.p.X=0
        F.p.Y=math.cos(i/120)
        F.p.Z=math.sin(i/60)
        loc:write( F )
    end
end

print("\nType send to show a dynamic visualization.\n");
--send()




--[[
    -- a buffered topic connection is used because we write multiple messages per cycle:
    depl:stream("viz.output", ros:topicBuffer("/marker_visualizations",nrofmarkers))
--]]

--[[
you can connect viz3.output to an output corresponding to the end effector to 
get a trace of the endeffector:

-- deploy marker visualization (3)
    depl:loadComponent("viz3","Viz_Marker")
    viz3=depl:getPeer("viz3")
    viz3:getProperty("nrofmarkers"):set(1)
    viz3:getProperty("frameid"):set("robot_base_link")
    viz3:getProperty("type"):set(8)
    viz3:getProperty("red"):set(0)
    viz3:getProperty("green"):set(1)
    viz3:getProperty("blue"):set(0)
    viz3:getProperty("alpha"):set(1)
    viz3:getProperty("scalex"):set(0.003)
    viz3:getProperty("scaley"):set(0.003)
    viz3:getProperty("scalez"):set(0.003)
    viz3:getProperty("lifetime"):set(20)
    viz3:configure()
    depl:setActivity("viz3", 0.01, 50, rtt.globals.ORO_SCHED_RT)
    depl:stream("viz3.output", ros:topic("/marker_visualizations"))
    viz3:start()
--]]

