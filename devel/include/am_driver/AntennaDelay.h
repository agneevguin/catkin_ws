// Generated by gencpp from file am_driver/AntennaDelay.msg
// DO NOT EDIT!


#ifndef AM_DRIVER_MESSAGE_ANTENNADELAY_H
#define AM_DRIVER_MESSAGE_ANTENNADELAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace am_driver
{
template <class ContainerAllocator>
struct AntennaDelay_
{
  typedef AntennaDelay_<ContainerAllocator> Type;

  AntennaDelay_()
    : index(0)
    , antennaDelay(0)  {
    }
  AntennaDelay_(const ContainerAllocator& _alloc)
    : index(0)
    , antennaDelay(0)  {
  (void)_alloc;
    }



   typedef int16_t _index_type;
  _index_type index;

   typedef int32_t _antennaDelay_type;
  _antennaDelay_type antennaDelay;




  typedef boost::shared_ptr< ::am_driver::AntennaDelay_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::am_driver::AntennaDelay_<ContainerAllocator> const> ConstPtr;

}; // struct AntennaDelay_

typedef ::am_driver::AntennaDelay_<std::allocator<void> > AntennaDelay;

typedef boost::shared_ptr< ::am_driver::AntennaDelay > AntennaDelayPtr;
typedef boost::shared_ptr< ::am_driver::AntennaDelay const> AntennaDelayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::am_driver::AntennaDelay_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::am_driver::AntennaDelay_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace am_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'am_driver': ['/home/agneev/catkin_ws/src/hrp/am_driver/msg', '/home/agneev/catkin_ws/src/hrp/am_driver/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::am_driver::AntennaDelay_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::am_driver::AntennaDelay_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::am_driver::AntennaDelay_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::am_driver::AntennaDelay_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::am_driver::AntennaDelay_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::am_driver::AntennaDelay_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::am_driver::AntennaDelay_<ContainerAllocator> >
{
  static const char* value()
  {
    return "300a1f1202ac4a4dd05465424107afbc";
  }

  static const char* value(const ::am_driver::AntennaDelay_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x300a1f1202ac4a4dULL;
  static const uint64_t static_value2 = 0xd05465424107afbcULL;
};

template<class ContainerAllocator>
struct DataType< ::am_driver::AntennaDelay_<ContainerAllocator> >
{
  static const char* value()
  {
    return "am_driver/AntennaDelay";
  }

  static const char* value(const ::am_driver::AntennaDelay_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::am_driver::AntennaDelay_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 index\n\
int32 antennaDelay\n\
 \n\
";
  }

  static const char* value(const ::am_driver::AntennaDelay_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::am_driver::AntennaDelay_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.index);
      stream.next(m.antennaDelay);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct AntennaDelay_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::am_driver::AntennaDelay_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::am_driver::AntennaDelay_<ContainerAllocator>& v)
  {
    s << indent << "index: ";
    Printer<int16_t>::stream(s, indent + "  ", v.index);
    s << indent << "antennaDelay: ";
    Printer<int32_t>::stream(s, indent + "  ", v.antennaDelay);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AM_DRIVER_MESSAGE_ANTENNADELAY_H