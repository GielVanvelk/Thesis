/* Auto-generated by create_boost_header.py for file /home/giel/etasl/ws/my_new_workspace/src/motion_control/motion_control_msgs/msg/JointAccelerations.msg */
#ifndef MOTION_CONTROL_MSGS_BOOST_SERIALIZATION_JOINTACCELERATIONS_H
#define MOTION_CONTROL_MSGS_BOOST_SERIALIZATION_JOINTACCELERATIONS_H

#include <boost/serialization/serialization.hpp>
#include <boost/serialization/nvp.hpp>
#include <boost/serialization/vector.hpp>
#include <boost/serialization/string.hpp>
#include <motion_control_msgs/JointAccelerations.h>

namespace boost
{
namespace serialization
{

template<class Archive, class ContainerAllocator>
void serialize(Archive& a,  ::motion_control_msgs::JointAccelerations_<ContainerAllocator>  & m, unsigned int)
{
    a & make_nvp("names",m.names);
    a & make_nvp("accelerations",m.accelerations);
}

} // namespace serialization
} // namespace boost

#endif // MOTION_CONTROL_MSGS_BOOST_SERIALIZATION_JOINTACCELERATIONS_H

