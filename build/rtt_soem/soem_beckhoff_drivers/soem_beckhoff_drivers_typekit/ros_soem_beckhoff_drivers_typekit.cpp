#include <orocos/soem_beckhoff_drivers/boost/AnalogMsg.h>
#include <orocos/soem_beckhoff_drivers/boost/CommMsgBig.h>
#include <orocos/soem_beckhoff_drivers/boost/CommMsg.h>
#include <orocos/soem_beckhoff_drivers/boost/DigitalMsg.h>
#include <orocos/soem_beckhoff_drivers/boost/EncoderMsg.h>
#include <orocos/soem_beckhoff_drivers/boost/EncoderInMsg.h>
#include <orocos/soem_beckhoff_drivers/boost/EncoderOutMsg.h>
#include <orocos/soem_beckhoff_drivers/boost/PSUMsg.h>

#include <rtt/types/TypekitPlugin.hpp>
#include <rtt/types/StructTypeInfo.hpp>

namespace rtt_roscomm {
  using namespace RTT;

    /** Declare all factory functions */
            void rtt_ros_addType_soem_beckhoff_drivers_AnalogMsg();
        void rtt_ros_addType_soem_beckhoff_drivers_CommMsgBig();
        void rtt_ros_addType_soem_beckhoff_drivers_CommMsg();
        void rtt_ros_addType_soem_beckhoff_drivers_DigitalMsg();
        void rtt_ros_addType_soem_beckhoff_drivers_EncoderMsg();
        void rtt_ros_addType_soem_beckhoff_drivers_EncoderInMsg();
        void rtt_ros_addType_soem_beckhoff_drivers_EncoderOutMsg();
        void rtt_ros_addType_soem_beckhoff_drivers_PSUMsg();

   
    /**
     * This interface defines the types of the realTime package.
     */
    class ROSsoem_beckhoff_driversTypekitPlugin
      : public types::TypekitPlugin
    {
    public:
      virtual std::string getName(){
          return std::string("ros-")+"soem_beckhoff_drivers";
      }

      virtual bool loadTypes() {
          // call all factory functions
                  rtt_ros_addType_soem_beckhoff_drivers_AnalogMsg(); // factory function for adding TypeInfo.
        rtt_ros_addType_soem_beckhoff_drivers_CommMsgBig(); // factory function for adding TypeInfo.
        rtt_ros_addType_soem_beckhoff_drivers_CommMsg(); // factory function for adding TypeInfo.
        rtt_ros_addType_soem_beckhoff_drivers_DigitalMsg(); // factory function for adding TypeInfo.
        rtt_ros_addType_soem_beckhoff_drivers_EncoderMsg(); // factory function for adding TypeInfo.
        rtt_ros_addType_soem_beckhoff_drivers_EncoderInMsg(); // factory function for adding TypeInfo.
        rtt_ros_addType_soem_beckhoff_drivers_EncoderOutMsg(); // factory function for adding TypeInfo.
        rtt_ros_addType_soem_beckhoff_drivers_PSUMsg(); // factory function for adding TypeInfo.

          return true;
      }
      virtual bool loadOperators() { return true; }
      virtual bool loadConstructors() { return true; }
    };
}

ORO_TYPEKIT_PLUGIN( rtt_roscomm::ROSsoem_beckhoff_driversTypekitPlugin )

