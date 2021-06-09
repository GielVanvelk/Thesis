#include <orocos/soem_ebox/boost/EBOXAnalog.h>
#include <orocos/soem_ebox/boost/EBOXDigital.h>
#include <orocos/soem_ebox/boost/EBOXOut.h>
#include <orocos/soem_ebox/boost/EBOXPWM.h>

#include <rtt_roscomm/rtt_rostopic_ros_msg_transporter.hpp>
#include <rtt_roscomm/rostopic.h>
#include <rtt/types/TransportPlugin.hpp>
#include <rtt/types/TypekitPlugin.hpp>

namespace rtt_roscomm {
  using namespace RTT;
    struct ROSsoem_eboxPlugin
      : public types::TransportPlugin
    {
      bool registerTransport(std::string name, types::TypeInfo* ti)
      {
                 if(name == "/soem_ebox/EBOXAnalog") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<soem_ebox::EBOXAnalog>());} else
       if(name == "/soem_ebox/EBOXDigital") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<soem_ebox::EBOXDigital>());} else
       if(name == "/soem_ebox/EBOXOut") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<soem_ebox::EBOXOut>());} else
       if(name == "/soem_ebox/EBOXPWM") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<soem_ebox::EBOXPWM>());} else
 { }
          return false;
      }
      
      std::string getTransportName() const {
          return "ros";
      }
      
      std::string getTypekitName() const {
          return std::string("ros-")+"soem_ebox";
      }
      std::string getName() const {
          return std::string("rtt-ros-") + "soem_ebox" + "-transport";
      }

    };
}

ORO_TYPEKIT_PLUGIN( rtt_roscomm::ROSsoem_eboxPlugin )
