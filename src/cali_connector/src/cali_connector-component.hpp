#ifndef CALI_CONNECTOR_COMPONENT_HPP
#define CALI_CONNECTOR_COMPONENT_HPP

#include <geometry_msgs/PoseStamped.h>
#include <rtt/RTT.hpp>
#include <string>
#include <Eigen/Geometry>

namespace cali
{ 

class CaliConnector : public RTT::TaskContext
    {
    public:

        CaliConnector( std::string const& _name );
        bool configureHook( );
        bool startHook( );
        void updateHook( );
        void stopHook( );
        void cleanupHook( );

    protected:

        // Properties

        // Ports
        RTT::InputPort < std::vector < double > >       in_us_info_;
        RTT::InputPort < std::vector < double > >       in_cross_position_;
        RTT::InputPort < bool >                         in_contact_water_;


        RTT::OutputPort < bool >                        out_write_finish_;
        RTT::OutputPort < bool >                        out_calibration_status_;
        RTT::OutputPort < bool >                        out_collect_data_status_;



    private:
        // Messages
        std::vector < double >      msg_us_info_;
        std::vector < double >      msg_cross_position_;
        bool      msg_calibration_status_ ;
        bool      msg_collect_data_status_ ;
        bool      msg_write_finish_ ;
        bool      calibration_status_ ;
        bool      collect_data_status_ ;
        bool      write_finish_ ;
        bool      msg_contact_water_ ;
};

} // End of namespace usconnector.

#endif
 
