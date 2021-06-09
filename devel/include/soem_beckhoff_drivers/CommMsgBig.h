// Generated by gencpp from file soem_beckhoff_drivers/CommMsgBig.msg
// DO NOT EDIT!


#ifndef SOEM_BECKHOFF_DRIVERS_MESSAGE_COMMMSGBIG_H
#define SOEM_BECKHOFF_DRIVERS_MESSAGE_COMMMSGBIG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <soem_beckhoff_drivers/CommMsg.h>

namespace soem_beckhoff_drivers
{
template <class ContainerAllocator>
struct CommMsgBig_
{
  typedef CommMsgBig_<ContainerAllocator> Type;

  CommMsgBig_()
    : channels()  {
    }
  CommMsgBig_(const ContainerAllocator& _alloc)
    : channels(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::soem_beckhoff_drivers::CommMsg_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::soem_beckhoff_drivers::CommMsg_<ContainerAllocator> >::other >  _channels_type;
  _channels_type channels;





  typedef boost::shared_ptr< ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator> const> ConstPtr;

}; // struct CommMsgBig_

typedef ::soem_beckhoff_drivers::CommMsgBig_<std::allocator<void> > CommMsgBig;

typedef boost::shared_ptr< ::soem_beckhoff_drivers::CommMsgBig > CommMsgBigPtr;
typedef boost::shared_ptr< ::soem_beckhoff_drivers::CommMsgBig const> CommMsgBigConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace soem_beckhoff_drivers

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'soem_beckhoff_drivers': ['/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_beckhoff_drivers/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9a82f040b0f86ae1565e078936798d4c";
  }

  static const char* value(const ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9a82f040b0f86ae1ULL;
  static const uint64_t static_value2 = 0x565e078936798d4cULL;
};

template<class ContainerAllocator>
struct DataType< ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator> >
{
  static const char* value()
  {
    return "soem_beckhoff_drivers/CommMsgBig";
  }

  static const char* value(const ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator> >
{
  static const char* value()
  {
    return "CommMsg[] channels\n\
\n\
================================================================================\n\
MSG: soem_beckhoff_drivers/CommMsg\n\
uint8[] datapacket\n\
uint8 datasize\n\
";
  }

  static const char* value(const ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.channels);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CommMsgBig_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::soem_beckhoff_drivers::CommMsgBig_<ContainerAllocator>& v)
  {
    s << indent << "channels[]" << std::endl;
    for (size_t i = 0; i < v.channels.size(); ++i)
    {
      s << indent << "  channels[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::soem_beckhoff_drivers::CommMsg_<ContainerAllocator> >::stream(s, indent + "    ", v.channels[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SOEM_BECKHOFF_DRIVERS_MESSAGE_COMMMSGBIG_H
