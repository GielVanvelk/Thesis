/* Auto-generated by create_boost_header.py for file /home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_beckhoff_drivers/msg/EncoderInMsg.msg */
#ifndef SOEM_BECKHOFF_DRIVERS_BOOST_SERIALIZATION_ENCODERINMSG_H
#define SOEM_BECKHOFF_DRIVERS_BOOST_SERIALIZATION_ENCODERINMSG_H

#include <boost/serialization/serialization.hpp>
#include <boost/serialization/nvp.hpp>
#include <boost/serialization/vector.hpp>
#include <boost/serialization/string.hpp>
#include <soem_beckhoff_drivers/EncoderInMsg.h>

namespace boost
{
namespace serialization
{

template<class Archive, class ContainerAllocator>
void serialize(Archive& a,  ::soem_beckhoff_drivers::EncoderInMsg_<ContainerAllocator>  & m, unsigned int)
{
    a & make_nvp("status",m.status);
    a & make_nvp("value",m.value);
    a & make_nvp("latch",m.latch);
    a & make_nvp("frequency",m.frequency);
    a & make_nvp("period",m.period);
    a & make_nvp("window",m.window);
}

} // namespace serialization
} // namespace boost

#endif // SOEM_BECKHOFF_DRIVERS_BOOST_SERIALIZATION_ENCODERINMSG_H

