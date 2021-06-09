// Generated by gencpp from file lwr_fri_msgs/FriRobotData.msg
// DO NOT EDIT!


#ifndef LWR_FRI_MSGS_MESSAGE_FRIROBOTDATA_H
#define LWR_FRI_MSGS_MESSAGE_FRIROBOTDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lwr_fri_msgs
{
template <class ContainerAllocator>
struct FriRobotData_
{
  typedef FriRobotData_<ContainerAllocator> Type;

  FriRobotData_()
    : msrJntPos()
    , cmdJntPos()
    , cmdJntPosFriOffset()  {
      msrJntPos.assign(0.0);

      cmdJntPos.assign(0.0);

      cmdJntPosFriOffset.assign(0.0);
  }
  FriRobotData_(const ContainerAllocator& _alloc)
    : msrJntPos()
    , cmdJntPos()
    , cmdJntPosFriOffset()  {
  (void)_alloc;
      msrJntPos.assign(0.0);

      cmdJntPos.assign(0.0);

      cmdJntPosFriOffset.assign(0.0);
  }



   typedef boost::array<float, 7>  _msrJntPos_type;
  _msrJntPos_type msrJntPos;

   typedef boost::array<float, 7>  _cmdJntPos_type;
  _cmdJntPos_type cmdJntPos;

   typedef boost::array<float, 7>  _cmdJntPosFriOffset_type;
  _cmdJntPosFriOffset_type cmdJntPosFriOffset;





  typedef boost::shared_ptr< ::lwr_fri_msgs::FriRobotData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lwr_fri_msgs::FriRobotData_<ContainerAllocator> const> ConstPtr;

}; // struct FriRobotData_

typedef ::lwr_fri_msgs::FriRobotData_<std::allocator<void> > FriRobotData;

typedef boost::shared_ptr< ::lwr_fri_msgs::FriRobotData > FriRobotDataPtr;
typedef boost::shared_ptr< ::lwr_fri_msgs::FriRobotData const> FriRobotDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lwr_fri_msgs::FriRobotData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lwr_fri_msgs::FriRobotData_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace lwr_fri_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'lwr_fri_msgs': ['/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::lwr_fri_msgs::FriRobotData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lwr_fri_msgs::FriRobotData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lwr_fri_msgs::FriRobotData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lwr_fri_msgs::FriRobotData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lwr_fri_msgs::FriRobotData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lwr_fri_msgs::FriRobotData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lwr_fri_msgs::FriRobotData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e89d68aab24b9a7050d5809b14a4e699";
  }

  static const char* value(const ::lwr_fri_msgs::FriRobotData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe89d68aab24b9a70ULL;
  static const uint64_t static_value2 = 0x50d5809b14a4e699ULL;
};

template<class ContainerAllocator>
struct DataType< ::lwr_fri_msgs::FriRobotData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lwr_fri_msgs/FriRobotData";
  }

  static const char* value(const ::lwr_fri_msgs::FriRobotData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lwr_fri_msgs::FriRobotData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[7] msrJntPos\n\
float32[7] cmdJntPos\n\
float32[7] cmdJntPosFriOffset\n\
";
  }

  static const char* value(const ::lwr_fri_msgs::FriRobotData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lwr_fri_msgs::FriRobotData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.msrJntPos);
      stream.next(m.cmdJntPos);
      stream.next(m.cmdJntPosFriOffset);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FriRobotData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lwr_fri_msgs::FriRobotData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lwr_fri_msgs::FriRobotData_<ContainerAllocator>& v)
  {
    s << indent << "msrJntPos[]" << std::endl;
    for (size_t i = 0; i < v.msrJntPos.size(); ++i)
    {
      s << indent << "  msrJntPos[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.msrJntPos[i]);
    }
    s << indent << "cmdJntPos[]" << std::endl;
    for (size_t i = 0; i < v.cmdJntPos.size(); ++i)
    {
      s << indent << "  cmdJntPos[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.cmdJntPos[i]);
    }
    s << indent << "cmdJntPosFriOffset[]" << std::endl;
    for (size_t i = 0; i < v.cmdJntPosFriOffset.size(); ++i)
    {
      s << indent << "  cmdJntPosFriOffset[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.cmdJntPosFriOffset[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LWR_FRI_MSGS_MESSAGE_FRIROBOTDATA_H