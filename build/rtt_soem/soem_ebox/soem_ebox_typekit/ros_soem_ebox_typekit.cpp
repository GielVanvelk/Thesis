#include <orocos/soem_ebox/boost/EBOXAnalog.h>
#include <orocos/soem_ebox/boost/EBOXDigital.h>
#include <orocos/soem_ebox/boost/EBOXOut.h>
#include <orocos/soem_ebox/boost/EBOXPWM.h>

#include <rtt/types/TypekitPlugin.hpp>
#include <rtt/types/StructTypeInfo.hpp>

namespace rtt_roscomm {
  using namespace RTT;

    /** Declare all factory functions */
            void rtt_ros_addType_soem_ebox_EBOXAnalog();
        void rtt_ros_addType_soem_ebox_EBOXDigital();
        void rtt_ros_addType_soem_ebox_EBOXOut();
        void rtt_ros_addType_soem_ebox_EBOXPWM();

   
    /**
     * This interface defines the types of the realTime package.
     */
    class ROSsoem_eboxTypekitPlugin
      : public types::TypekitPlugin
    {
    public:
      virtual std::string getName(){
          return std::string("ros-")+"soem_ebox";
      }

      virtual bool loadTypes() {
          // call all factory functions
                  rtt_ros_addType_soem_ebox_EBOXAnalog(); // factory function for adding TypeInfo.
        rtt_ros_addType_soem_ebox_EBOXDigital(); // factory function for adding TypeInfo.
        rtt_ros_addType_soem_ebox_EBOXOut(); // factory function for adding TypeInfo.
        rtt_ros_addType_soem_ebox_EBOXPWM(); // factory function for adding TypeInfo.

          return true;
      }
      virtual bool loadOperators() { return true; }
      virtual bool loadConstructors() { return true; }
    };
}

ORO_TYPEKIT_PLUGIN( rtt_roscomm::ROSsoem_eboxTypekitPlugin )

