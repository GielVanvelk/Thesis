#ifndef OROCOS_MYTASK_COMPONENT_HPP
#define OROCOS_MYTASK_COMPONENT_HPP

//#include <geometry_msgs/PoseStamped.h>
#include <rtt/RTT.hpp>
//#include <string>
#include <Eigen/Geometry>

namespace mytask
{

  class Mytask : public RTT::TaskContext {
    public:
      // functions
      Mytask(std::string const& name);
      bool configureHook();
      bool startHook();
      void updateHook();
      void stopHook();
      void cleanupHook();

    protected:
      // Properties
      // Ports
      RTT::InputPort < std::vector < double > >       in_force_data;

      RTT::OutputPort < bool >                        out_force_too_low;
      RTT::OutputPort < bool >                        out_force_too_high;

    //private:
      // Messages
      //std::vector < double >      msg_us_info_;
      //std::vector < double >      msg_cross_position_;
      //bool      msg_calibration_status_ ;
      //bool      msg_collect_data_status_ ;
      //bool      msg_write_finish_ ;
      //bool      calibration_status_ ;
      //bool      collect_data_status_ ;
      //bool      write_finish_ ;
      //bool      msg_contact_water_ ;

  };

} // End of namespace
#endif
