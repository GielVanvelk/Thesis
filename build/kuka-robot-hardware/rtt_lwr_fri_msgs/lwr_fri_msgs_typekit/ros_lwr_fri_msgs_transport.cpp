#include <orocos/lwr_fri_msgs/boost/CartesianImpedance.h>
#include <orocos/lwr_fri_msgs/boost/FriJointImpedance.h>
#include <orocos/lwr_fri_msgs/boost/FriRobotData.h>
#include <orocos/lwr_fri_msgs/boost/FriJointCommand.h>
#include <orocos/lwr_fri_msgs/boost/FriJointState.h>
#include <orocos/lwr_fri_msgs/boost/FriRobotJntData.h>

#include <rtt_roscomm/rtt_rostopic_ros_msg_transporter.hpp>
#include <rtt_roscomm/rostopic.h>
#include <rtt/types/TransportPlugin.hpp>
#include <rtt/types/TypekitPlugin.hpp>

namespace rtt_roscomm {
  using namespace RTT;
    struct ROSlwr_fri_msgsPlugin
      : public types::TransportPlugin
    {
      bool registerTransport(std::string name, types::TypeInfo* ti)
      {
                 if(name == "/lwr_fri_msgs/CartesianImpedance") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<lwr_fri_msgs::CartesianImpedance>());} else
       if(name == "/lwr_fri_msgs/FriJointImpedance") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<lwr_fri_msgs::FriJointImpedance>());} else
       if(name == "/lwr_fri_msgs/FriRobotData") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<lwr_fri_msgs::FriRobotData>());} else
       if(name == "/lwr_fri_msgs/FriJointCommand") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<lwr_fri_msgs::FriJointCommand>());} else
       if(name == "/lwr_fri_msgs/FriJointState") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<lwr_fri_msgs::FriJointState>());} else
       if(name == "/lwr_fri_msgs/FriRobotJntData") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<lwr_fri_msgs::FriRobotJntData>());} else
 { }
          return false;
      }
      
      std::string getTransportName() const {
          return "ros";
      }
      
      std::string getTypekitName() const {
          return std::string("ros-")+"lwr_fri_msgs";
      }
      std::string getName() const {
          return std::string("rtt-ros-") + "lwr_fri_msgs" + "-transport";
      }

    };
}

ORO_TYPEKIT_PLUGIN( rtt_roscomm::ROSlwr_fri_msgsPlugin )
