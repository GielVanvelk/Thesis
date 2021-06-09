// Generated by gencpp from file motion_control_msgs/JointEfforts.msg
// DO NOT EDIT!


#ifndef MOTION_CONTROL_MSGS_MESSAGE_JOINTEFFORTS_H
#define MOTION_CONTROL_MSGS_MESSAGE_JOINTEFFORTS_H


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
struct JointEfforts_
{
  typedef JointEfforts_<ContainerAllocator> Type;

  JointEfforts_()
    : names()
    , efforts()  {
    }
  JointEfforts_(const ContainerAllocator& _alloc)
    : names(_alloc)
    , efforts(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _names_type;
  _names_type names;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _efforts_type;
  _efforts_type efforts;





  typedef boost::shared_ptr< ::motion_control_msgs::JointEfforts_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::motion_control_msgs::JointEfforts_<ContainerAllocator> const> ConstPtr;

}; // struct JointEfforts_

typedef ::motion_control_msgs::JointEfforts_<std::allocator<void> > JointEfforts;

typedef boost::shared_ptr< ::motion_control_msgs::JointEfforts > JointEffortsPtr;
typedef boost::shared_ptr< ::motion_control_msgs::JointEfforts const> JointEffortsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::motion_control_msgs::JointEfforts_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::motion_control_msgs::JointEfforts_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::motion_control_msgs::JointEfforts_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::motion_control_msgs::JointEfforts_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motion_control_msgs::JointEfforts_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motion_control_msgs::JointEfforts_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motion_control_msgs::JointEfforts_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motion_control_msgs::JointEfforts_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::motion_control_msgs::JointEfforts_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b6430b8ec0693b7af8da0bcb29973d67";
  }

  static const char* value(const ::motion_control_msgs::JointEfforts_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb6430b8ec0693b7aULL;
  static const uint64_t static_value2 = 0xf8da0bcb29973d67ULL;
};

template<class ContainerAllocator>
struct DataType< ::motion_control_msgs::JointEfforts_<ContainerAllocator> >
{
  static const char* value()
  {
    return "motion_control_msgs/JointEfforts";
  }

  static const char* value(const ::motion_control_msgs::JointEfforts_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::motion_control_msgs::JointEfforts_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] names\n\
float64[] efforts\n\
";
  }

  static const char* value(const ::motion_control_msgs::JointEfforts_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::motion_control_msgs::JointEfforts_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.names);
      stream.next(m.efforts);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointEfforts_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::motion_control_msgs::JointEfforts_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::motion_control_msgs::JointEfforts_<ContainerAllocator>& v)
  {
    s << indent << "names[]" << std::endl;
    for (size_t i = 0; i < v.names.size(); ++i)
    {
      s << indent << "  names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.names[i]);
    }
    s << indent << "efforts[]" << std::endl;
    for (size_t i = 0; i < v.efforts.size(); ++i)
    {
      s << indent << "  efforts[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.efforts[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOTION_CONTROL_MSGS_MESSAGE_JOINTEFFORTS_H