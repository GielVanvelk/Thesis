/* Auto-generated by create_boost_header.py for file /home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_beckhoff_drivers/msg/CommMsg.msg */
#ifndef SOEM_BECKHOFF_DRIVERS_BOOST_SERIALIZATION_COMMMSG_H
#define SOEM_BECKHOFF_DRIVERS_BOOST_SERIALIZATION_COMMMSG_H

#include <boost/serialization/serialization.hpp>
#include <boost/serialization/nvp.hpp>
#include <boost/serialization/vector.hpp>
#include <boost/serialization/string.hpp>
#include <soem_beckhoff_drivers/CommMsg.h>

namespace boost
{
namespace serialization
{

template<class Archive, class ContainerAllocator>
void serialize(Archive& a,  ::soem_beckhoff_drivers::CommMsg_<ContainerAllocator>  & m, unsigned int)
{
    a & make_nvp("datapacket",m.datapacket);
    a & make_nvp("datasize",m.datasize);
}

} // namespace serialization
} // namespace boost

#endif // SOEM_BECKHOFF_DRIVERS_BOOST_SERIALIZATION_COMMMSG_H

