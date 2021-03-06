// Generated by gencpp from file am_driver/WheelSpeed4.msg
// DO NOT EDIT!


#ifndef AM_DRIVER_MESSAGE_WHEELSPEED4_H
#define AM_DRIVER_MESSAGE_WHEELSPEED4_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace am_driver
{
template <class ContainerAllocator>
struct WheelSpeed4_
{
  typedef WheelSpeed4_<ContainerAllocator> Type;

  WheelSpeed4_()
    : header()
    , leftFrontSpeed(0)
    , rightFrontSpeed(0)
    , leftRearSpeed(0)
    , rightRearSpeed(0)  {
    }
  WheelSpeed4_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , leftFrontSpeed(0)
    , rightFrontSpeed(0)
    , leftRearSpeed(0)
    , rightRearSpeed(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int16_t _leftFrontSpeed_type;
  _leftFrontSpeed_type leftFrontSpeed;

   typedef int16_t _rightFrontSpeed_type;
  _rightFrontSpeed_type rightFrontSpeed;

   typedef int16_t _leftRearSpeed_type;
  _leftRearSpeed_type leftRearSpeed;

   typedef int16_t _rightRearSpeed_type;
  _rightRearSpeed_type rightRearSpeed;




  typedef boost::shared_ptr< ::am_driver::WheelSpeed4_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::am_driver::WheelSpeed4_<ContainerAllocator> const> ConstPtr;

}; // struct WheelSpeed4_

typedef ::am_driver::WheelSpeed4_<std::allocator<void> > WheelSpeed4;

typedef boost::shared_ptr< ::am_driver::WheelSpeed4 > WheelSpeed4Ptr;
typedef boost::shared_ptr< ::am_driver::WheelSpeed4 const> WheelSpeed4ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::am_driver::WheelSpeed4_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::am_driver::WheelSpeed4_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace am_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'am_driver': ['/home/agneev/catkin_ws/src/hrp/am_driver/msg', '/home/agneev/catkin_ws/src/hrp/am_driver/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::am_driver::WheelSpeed4_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::am_driver::WheelSpeed4_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::am_driver::WheelSpeed4_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::am_driver::WheelSpeed4_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::am_driver::WheelSpeed4_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::am_driver::WheelSpeed4_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::am_driver::WheelSpeed4_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bfe5178565f4e68aee4afea852bfda05";
  }

  static const char* value(const ::am_driver::WheelSpeed4_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbfe5178565f4e68aULL;
  static const uint64_t static_value2 = 0xee4afea852bfda05ULL;
};

template<class ContainerAllocator>
struct DataType< ::am_driver::WheelSpeed4_<ContainerAllocator> >
{
  static const char* value()
  {
    return "am_driver/WheelSpeed4";
  }

  static const char* value(const ::am_driver::WheelSpeed4_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::am_driver::WheelSpeed4_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
int16 leftFrontSpeed\n\
int16 rightFrontSpeed\n\
int16 leftRearSpeed\n\
int16 rightRearSpeed\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::am_driver::WheelSpeed4_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::am_driver::WheelSpeed4_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.leftFrontSpeed);
      stream.next(m.rightFrontSpeed);
      stream.next(m.leftRearSpeed);
      stream.next(m.rightRearSpeed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct WheelSpeed4_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::am_driver::WheelSpeed4_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::am_driver::WheelSpeed4_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "leftFrontSpeed: ";
    Printer<int16_t>::stream(s, indent + "  ", v.leftFrontSpeed);
    s << indent << "rightFrontSpeed: ";
    Printer<int16_t>::stream(s, indent + "  ", v.rightFrontSpeed);
    s << indent << "leftRearSpeed: ";
    Printer<int16_t>::stream(s, indent + "  ", v.leftRearSpeed);
    s << indent << "rightRearSpeed: ";
    Printer<int16_t>::stream(s, indent + "  ", v.rightRearSpeed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AM_DRIVER_MESSAGE_WHEELSPEED4_H
