/* Auto-generated by create_boost_header.py for file /home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXDigital.msg */
#ifndef SOEM_EBOX_BOOST_SERIALIZATION_EBOXDIGITAL_H
#define SOEM_EBOX_BOOST_SERIALIZATION_EBOXDIGITAL_H

#include <boost/serialization/serialization.hpp>
#include <boost/serialization/nvp.hpp>
#include <boost/serialization/vector.hpp>
#include <boost/serialization/string.hpp>
#include <soem_ebox/EBOXDigital.h>

namespace boost
{
namespace serialization
{

template<class Archive, class ContainerAllocator>
void serialize(Archive& a,  ::soem_ebox::EBOXDigital_<ContainerAllocator>  & m, unsigned int)
{
    a & make_nvp("digital",m.digital);
}

} // namespace serialization
} // namespace boost

#endif // SOEM_EBOX_BOOST_SERIALIZATION_EBOXDIGITAL_H
