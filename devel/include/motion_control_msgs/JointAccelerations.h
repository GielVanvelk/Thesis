// Generated by gencpp from file motion_control_msgs/JointAccelerations.msg
// DO NOT EDIT!


#ifndef MOTION_CONTROL_MSGS_MESSAGE_JOINTACCELERATIONS_H
#define MOTION_CONTROL_MSGS_MESSAGE_JOINTACCELERATIONS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace motion_control_msgs
{
template <class ContainerAllocator>
struct JointAccelerations_
{
  typedef JointAccelerations_<ContainerAllocator> Type;

  JointAccelerations_()
    : names()
    , accelerations()  {
    }
  JointAccelerations_(const ContainerAllocator& _alloc)
    : names(_alloc)
    , accelerations(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _names_type;
  _names_type names;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _accelerations_type;
  _accelerations_type accelerations;





  typedef boost::shared_ptr< ::motion_control_msgs::JointAccelerations_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::motion_control_msgs::JointAccelerations_<ContainerAllocator> const> ConstPtr;

}; // struct JointAccelerations_

typedef ::motion_control_msgs::JointAccelerations_<std::allocator<void> > JointAccelerations;

typedef boost::shared_ptr< ::motion_control_msgs::JointAccelerations > JointAccelerationsPtr;
typedef boost::shared_ptr< ::motion_control_msgs::JointAccelerations const> JointAccelerationsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::motion_control_msgs::JointAccelerations_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::motion_control_msgs::JointAccelerations_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace motion_control_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'motion_control_msgs': ['/home/giel/etasl/ws/my_new_workspace/src/motion_control/motion_control_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::motion_control_msgs::JointAccelerations_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::motion_control_msgs::JointAccelerations_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motion_control_msgs::JointAccelerations_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motion_control_msgs::JointAccelerations_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motion_control_msgs::JointAccelerations_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motion_control_msgs::JointAccelerations_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::motion_control_msgs::JointAccelerations_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c6d0458b807e50ade13510ee24a97ef7";
  }

  static const char* value(const ::motion_control_msgs::JointAccelerations_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc6d0458b807e50adULL;
  static const uint64_t static_value2 = 0xe13510ee24a97ef7ULL;
};

template<class ContainerAllocator>
struct DataType< ::motion_control_msgs::JointAccelerations_<ContainerAllocator> >
{
  static const char* value()
  {
    return "motion_control_msgs/JointAccelerations";
  }

  static const char* value(const ::motion_control_msgs::JointAccelerations_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::motion_control_msgs::JointAccelerations_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] names\n\
float64[] accelerations\n\
";
  }

  static const char* value(const ::motion_control_msgs::JointAccelerations_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::motion_control_msgs::JointAccelerations_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.names);
      stream.next(m.accelerations);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointAccelerations_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::motion_control_msgs::JointAccelerations_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::motion_control_msgs::JointAccelerations_<ContainerAllocator>& v)
  {
    s << indent << "names[]" << std::endl;
    for (size_t i = 0; i < v.names.size(); ++i)
    {
      s << indent << "  names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.names[i]);
    }
    s << indent << "accelerations[]" << std::endl;
    for (size_t i = 0; i < v.accelerations.size(); ++i)
    {
      s << indent << "  accelerations[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.accelerations[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOTION_CONTROL_MSGS_MESSAGE_JOINTACCELERATIONS_H
