// Generated by gencpp from file am_planning/PathToPose.msg
// DO NOT EDIT!


#ifndef AM_PLANNING_MESSAGE_PATHTOPOSE_H
#define AM_PLANNING_MESSAGE_PATHTOPOSE_H

#include <ros/service_traits.h>


#include <am_planning/PathToPoseRequest.h>
#include <am_planning/PathToPoseResponse.h>


namespace am_planning
{

struct PathToPose
{

typedef PathToPoseRequest Request;
typedef PathToPoseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PathToPose
} // namespace am_planning


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::am_planning::PathToPose > {
  static const char* value()
  {
    return "783cfa47b41dfec4009f6dfdb0946ccb";
  }

  static const char* value(const ::am_planning::PathToPose&) { return value(); }
};

template<>
struct DataType< ::am_planning::PathToPose > {
  static const char* value()
  {
    return "am_planning/PathToPose";
  }

  static const char* value(const ::am_planning::PathToPose&) { return value(); }
};


// service_traits::MD5Sum< ::am_planning::PathToPoseRequest> should match 
// service_traits::MD5Sum< ::am_planning::PathToPose > 
template<>
struct MD5Sum< ::am_planning::PathToPoseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::am_planning::PathToPose >::value();
  }
  static const char* value(const ::am_planning::PathToPoseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::am_planning::PathToPoseRequest> should match 
// service_traits::DataType< ::am_planning::PathToPose > 
template<>
struct DataType< ::am_planning::PathToPoseRequest>
{
  static const char* value()
  {
    return DataType< ::am_planning::PathToPose >::value();
  }
  static const char* value(const ::am_planning::PathToPoseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::am_planning::PathToPoseResponse> should match 
// service_traits::MD5Sum< ::am_planning::PathToPose > 
template<>
struct MD5Sum< ::am_planning::PathToPoseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::am_planning::PathToPose >::value();
  }
  static const char* value(const ::am_planning::PathToPoseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::am_planning::PathToPoseResponse> should match 
// service_traits::DataType< ::am_planning::PathToPose > 
template<>
struct DataType< ::am_planning::PathToPoseResponse>
{
  static const char* value()
  {
    return DataType< ::am_planning::PathToPose >::value();
  }
  static const char* value(const ::am_planning::PathToPoseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AM_PLANNING_MESSAGE_PATHTOPOSE_H
