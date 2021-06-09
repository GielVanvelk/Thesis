#include <orocos/motion_control_msgs/boost/JointAccelerations.h>
#include <orocos/motion_control_msgs/boost/JointEfforts.h>
#include <orocos/motion_control_msgs/boost/JointPositions.h>
#include <orocos/motion_control_msgs/boost/JointVelocities.h>

#include <rtt_roscomm/rtt_rostopic_ros_msg_transporter.hpp>
#include <rtt_roscomm/rostopic.h>
#include <rtt/types/TransportPlugin.hpp>
#include <rtt/types/TypekitPlugin.hpp>

namespace rtt_roscomm {
  using namespace RTT;
    struct ROSmotion_control_msgsPlugin
      : public types::TransportPlugin
    {
      bool registerTransport(std::string name, types::TypeInfo* ti)
      {
                 if(name == "/motion_control_msgs/JointAccelerations") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<motion_control_msgs::JointAccelerations>());} else
       if(name == "/motion_control_msgs/JointEfforts") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<motion_control_msgs::JointEfforts>());} else
       if(name == "/motion_control_msgs/JointPositions") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<motion_control_msgs::JointPositions>());} else
       if(name == "/motion_control_msgs/JointVelocities") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<motion_control_msgs::JointVelocities>());} else
 { }
          return false;
      }
      
      std::string getTransportName() const {
          return "ros";
      }
      
      std::string getTypekitName() const {
          return std::string("ros-")+"motion_control_msgs";
      }
      std::string getName() const {
          return std::string("rtt-ros-") + "motion_control_msgs" + "-transport";
      }

    };
}

ORO_TYPEKIT_PLUGIN( rtt_roscomm::ROSmotion_control_msgsPlugin )
