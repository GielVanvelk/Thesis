#include <orocos/motion_control_msgs/boost/JointAccelerations.h>
#include <orocos/motion_control_msgs/boost/JointEfforts.h>
#include <orocos/motion_control_msgs/boost/JointPositions.h>
#include <orocos/motion_control_msgs/boost/JointVelocities.h>

#include <rtt/types/TypekitPlugin.hpp>
#include <rtt/types/StructTypeInfo.hpp>

namespace rtt_roscomm {
  using namespace RTT;

    /** Declare all factory functions */
            void rtt_ros_addType_motion_control_msgs_JointAccelerations();
        void rtt_ros_addType_motion_control_msgs_JointEfforts();
        void rtt_ros_addType_motion_control_msgs_JointPositions();
        void rtt_ros_addType_motion_control_msgs_JointVelocities();

   
    /**
     * This interface defines the types of the realTime package.
     */
    class ROSmotion_control_msgsTypekitPlugin
      : public types::TypekitPlugin
    {
    public:
      virtual std::string getName(){
          return std::string("ros-")+"motion_control_msgs";
      }

      virtual bool loadTypes() {
          // call all factory functions
                  rtt_ros_addType_motion_control_msgs_JointAccelerations(); // factory function for adding TypeInfo.
        rtt_ros_addType_motion_control_msgs_JointEfforts(); // factory function for adding TypeInfo.
        rtt_ros_addType_motion_control_msgs_JointPositions(); // factory function for adding TypeInfo.
        rtt_ros_addType_motion_control_msgs_JointVelocities(); // factory function for adding TypeInfo.

          return true;
      }
      virtual bool loadOperators() { return true; }
      virtual bool loadConstructors() { return true; }
    };
}

ORO_TYPEKIT_PLUGIN( rtt_roscomm::ROSmotion_control_msgsTypekitPlugin )

