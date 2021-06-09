#include <orocos/soem_beckhoff_drivers/boost/AnalogMsg.h>
#include <orocos/soem_beckhoff_drivers/boost/CommMsgBig.h>
#include <orocos/soem_beckhoff_drivers/boost/CommMsg.h>
#include <orocos/soem_beckhoff_drivers/boost/DigitalMsg.h>
#include <orocos/soem_beckhoff_drivers/boost/EncoderMsg.h>
#include <orocos/soem_beckhoff_drivers/boost/EncoderInMsg.h>
#include <orocos/soem_beckhoff_drivers/boost/EncoderOutMsg.h>
#include <orocos/soem_beckhoff_drivers/boost/PSUMsg.h>

#include <rtt_roscomm/rtt_rostopic_ros_msg_transporter.hpp>
#include <rtt_roscomm/rostopic.h>
#include <rtt/types/TransportPlugin.hpp>
#include <rtt/types/TypekitPlugin.hpp>

namespace rtt_roscomm {
  using namespace RTT;
    struct ROSsoem_beckhoff_driversPlugin
      : public types::TransportPlugin
    {
      bool registerTransport(std::string name, types::TypeInfo* ti)
      {
                 if(name == "/soem_beckhoff_drivers/AnalogMsg") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<soem_beckhoff_drivers::AnalogMsg>());} else
       if(name == "/soem_beckhoff_drivers/CommMsgBig") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<soem_beckhoff_drivers::CommMsgBig>());} else
       if(name == "/soem_beckhoff_drivers/CommMsg") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<soem_beckhoff_drivers::CommMsg>());} else
       if(name == "/soem_beckhoff_drivers/DigitalMsg") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<soem_beckhoff_drivers::DigitalMsg>());} else
       if(name == "/soem_beckhoff_drivers/EncoderMsg") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<soem_beckhoff_drivers::EncoderMsg>());} else
       if(name == "/soem_beckhoff_drivers/EncoderInMsg") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<soem_beckhoff_drivers::EncoderInMsg>());} else
       if(name == "/soem_beckhoff_drivers/EncoderOutMsg") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<soem_beckhoff_drivers::EncoderOutMsg>());} else
       if(name == "/soem_beckhoff_drivers/PSUMsg") { return ti->addProtocol(ORO_ROS_PROTOCOL_ID,new RosMsgTransporter<soem_beckhoff_drivers::PSUMsg>());} else
 { }
          return false;
      }
      
      std::string getTransportName() const {
          return "ros";
      }
      
      std::string getTypekitName() const {
          return std::string("ros-")+"soem_beckhoff_drivers";
      }
      std::string getName() const {
          return std::string("rtt-ros-") + "soem_beckhoff_drivers" + "-transport";
      }

    };
}

ORO_TYPEKIT_PLUGIN( rtt_roscomm::ROSsoem_beckhoff_driversPlugin )
