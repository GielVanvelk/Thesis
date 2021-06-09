#include <soem_ebox/boost/EBOXAnalog.h>
#include <rtt/types/TypekitPlugin.hpp>
#include <rtt/types/StructTypeInfo.hpp>
#include <rtt/types/PrimitiveSequenceTypeInfo.hpp>
#include <rtt/types/CArrayTypeInfo.hpp>
#include <vector>

// Note: we need to put these up-front or we get gcc compiler warnings:
// <<warning: type attributes ignored after type is already defined>>        
template class RTT_EXPORT RTT::internal::DataSource< soem_ebox::EBOXAnalog >;
template class RTT_EXPORT RTT::internal::AssignableDataSource< soem_ebox::EBOXAnalog >;
template class RTT_EXPORT RTT::internal::AssignCommand< soem_ebox::EBOXAnalog >;
template class RTT_EXPORT RTT::internal::ValueDataSource< soem_ebox::EBOXAnalog >;
template class RTT_EXPORT RTT::internal::ConstantDataSource< soem_ebox::EBOXAnalog >;
template class RTT_EXPORT RTT::internal::ReferenceDataSource< soem_ebox::EBOXAnalog >;
template class RTT_EXPORT RTT::OutputPort< soem_ebox::EBOXAnalog >;
template class RTT_EXPORT RTT::InputPort< soem_ebox::EBOXAnalog >;
template class RTT_EXPORT RTT::Property< soem_ebox::EBOXAnalog >;
template class RTT_EXPORT RTT::Attribute< soem_ebox::EBOXAnalog >;
template class RTT_EXPORT RTT::Constant< soem_ebox::EBOXAnalog >;

namespace rtt_roscomm {
  using namespace RTT;
    // Factory function
    
      void rtt_ros_addType_soem_ebox_EBOXAnalog() {
           // Only the .msg type is sent over ports. The msg[] (variable size) and  cmsg[] (fixed size) exist only as members of larger messages
           RTT::types::Types()->addType( new types::StructTypeInfo<soem_ebox::EBOXAnalog>("/soem_ebox/EBOXAnalog") );
           RTT::types::Types()->addType( new types::PrimitiveSequenceTypeInfo<std::vector<soem_ebox::EBOXAnalog> >("/soem_ebox/EBOXAnalog[]") );
           RTT::types::Types()->addType( new types::CArrayTypeInfo<RTT::types::carray<soem_ebox::EBOXAnalog> >("/soem_ebox/cEBOXAnalog[]") );
      }

    
}

