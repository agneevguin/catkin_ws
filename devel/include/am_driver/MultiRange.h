// Generated by gencpp from file am_driver/MultiRange.msg
// DO NOT EDIT!


#ifndef AM_DRIVER_MESSAGE_MULTIRANGE_H
#define AM_DRIVER_MESSAGE_MULTIRANGE_H


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
struct MultiRange_
{
  typedef MultiRange_<ContainerAllocator> Type;

  MultiRange_()
    : header()
    , numBeacons(0)
    , beaconId()
    , numRanges(0)
    , range()  {
    }
  MultiRange_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , numBeacons(0)
    , beaconId(_alloc)
    , numRanges(0)
    , range(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _numBeacons_type;
  _numBeacons_type numBeacons;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _beaconId_type;
  _beaconId_type beaconId;

   typedef uint32_t _numRanges_type;
  _numRanges_type numRanges;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _range_type;
  _range_type range;




  typedef boost::shared_ptr< ::am_driver::MultiRange_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::am_driver::MultiRange_<ContainerAllocator> const> ConstPtr;

}; // struct MultiRange_

typedef ::am_driver::MultiRange_<std::allocator<void> > MultiRange;

typedef boost::shared_ptr< ::am_driver::MultiRange > MultiRangePtr;
typedef boost::shared_ptr< ::am_driver::MultiRange const> MultiRangeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::am_driver::MultiRange_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::am_driver::MultiRange_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::am_driver::MultiRange_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::am_driver::MultiRange_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::am_driver::MultiRange_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::am_driver::MultiRange_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::am_driver::MultiRange_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::am_driver::MultiRange_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::am_driver::MultiRange_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c8069e026eaba36b442a9e5cae1b2a4e";
  }

  static const char* value(const ::am_driver::MultiRange_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc8069e026eaba36bULL;
  static const uint64_t static_value2 = 0x442a9e5cae1b2a4eULL;
};

template<class ContainerAllocator>
struct DataType< ::am_driver::MultiRange_<ContainerAllocator> >
{
  static const char* value()
  {
    return "am_driver/MultiRange";
  }

  static const char* value(const ::am_driver::MultiRange_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::am_driver::MultiRange_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
uint32 numBeacons\n\
string[] beaconId\n\
uint32 numRanges\n\
float32[] range\n\
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

  static const char* value(const ::am_driver::MultiRange_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::am_driver::MultiRange_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.numBeacons);
      stream.next(m.beaconId);
      stream.next(m.numRanges);
      stream.next(m.range);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct MultiRange_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::am_driver::MultiRange_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::am_driver::MultiRange_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "numBeacons: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.numBeacons);
    s << indent << "beaconId[]" << std::endl;
    for (size_t i = 0; i < v.beaconId.size(); ++i)
    {
      s << indent << "  beaconId[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.beaconId[i]);
    }
    s << indent << "numRanges: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.numRanges);
    s << indent << "range[]" << std::endl;
    for (size_t i = 0; i < v.range.size(); ++i)
    {
      s << indent << "  range[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.range[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AM_DRIVER_MESSAGE_MULTIRANGE_H