#include <orocos/lwr_fri_msgs/boost/CartesianImpedance.h>
#include <orocos/lwr_fri_msgs/boost/FriJointImpedance.h>
#include <orocos/lwr_fri_msgs/boost/FriRobotData.h>
#include <orocos/lwr_fri_msgs/boost/FriJointCommand.h>
#include <orocos/lwr_fri_msgs/boost/FriJointState.h>
#include <orocos/lwr_fri_msgs/boost/FriRobotJntData.h>

#include <rtt/types/TypekitPlugin.hpp>
#include <rtt/types/StructTypeInfo.hpp>

namespace rtt_roscomm {
  using namespace RTT;

    /** Declare all factory functions */
            void rtt_ros_addType_lwr_fri_msgs_CartesianImpedance();
        void rtt_ros_addType_lwr_fri_msgs_FriJointImpedance();
        void rtt_ros_addType_lwr_fri_msgs_FriRobotData();
        void rtt_ros_addType_lwr_fri_msgs_FriJointCommand();
        void rtt_ros_addType_lwr_fri_msgs_FriJointState();
        void rtt_ros_addType_lwr_fri_msgs_FriRobotJntData();

   
    /**
     * This interface defines the types of the realTime package.
     */
    class ROSlwr_fri_msgsTypekitPlugin
      : public types::TypekitPlugin
    {
    public:
      virtual std::string getName(){
          return std::string("ros-")+"lwr_fri_msgs";
      }

      virtual bool loadTypes() {
          // call all factory functions
                  rtt_ros_addType_lwr_fri_msgs_CartesianImpedance(); // factory function for adding TypeInfo.
        rtt_ros_addType_lwr_fri_msgs_FriJointImpedance(); // factory function for adding TypeInfo.
        rtt_ros_addType_lwr_fri_msgs_FriRobotData(); // factory function for adding TypeInfo.
        rtt_ros_addType_lwr_fri_msgs_FriJointCommand(); // factory function for adding TypeInfo.
        rtt_ros_addType_lwr_fri_msgs_FriJointState(); // factory function for adding TypeInfo.
        rtt_ros_addType_lwr_fri_msgs_FriRobotJntData(); // factory function for adding TypeInfo.

          return true;
      }
      virtual bool loadOperators() { return true; }
      virtual bool loadConstructors() { return true; }
    };
}

ORO_TYPEKIT_PLUGIN( rtt_roscomm::ROSlwr_fri_msgsTypekitPlugin )

