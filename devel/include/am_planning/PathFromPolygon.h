// Generated by gencpp from file am_planning/PathFromPolygon.msg
// DO NOT EDIT!


#ifndef AM_PLANNING_MESSAGE_PATHFROMPOLYGON_H
#define AM_PLANNING_MESSAGE_PATHFROMPOLYGON_H

#include <ros/service_traits.h>


#include <am_planning/PathFromPolygonRequest.h>
#include <am_planning/PathFromPolygonResponse.h>


namespace am_planning
{

struct PathFromPolygon
{

typedef PathFromPolygonRequest Request;
typedef PathFromPolygonResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PathFromPolygon
} // namespace am_planning


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::am_planning::PathFromPolygon > {
  static const char* value()
  {
    return "7657c8d98634a267a0bec240812d8a14";
  }

  static const char* value(const ::am_planning::PathFromPolygon&) { return value(); }
};

template<>
struct DataType< ::am_planning::PathFromPolygon > {
  static const char* value()
  {
    return "am_planning/PathFromPolygon";
  }

  static const char* value(const ::am_planning::PathFromPolygon&) { return value(); }
};


// service_traits::MD5Sum< ::am_planning::PathFromPolygonRequest> should match 
// service_traits::MD5Sum< ::am_planning::PathFromPolygon > 
template<>
struct MD5Sum< ::am_planning::PathFromPolygonRequest>
{
  static const char* value()
  {
    return MD5Sum< ::am_planning::PathFromPolygon >::value();
  }
  static const char* value(const ::am_planning::PathFromPolygonRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::am_planning::PathFromPolygonRequest> should match 
// service_traits::DataType< ::am_planning::PathFromPolygon > 
template<>
struct DataType< ::am_planning::PathFromPolygonRequest>
{
  static const char* value()
  {
    return DataType< ::am_planning::PathFromPolygon >::value();
  }
  static const char* value(const ::am_planning::PathFromPolygonRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::am_planning::PathFromPolygonResponse> should match 
// service_traits::MD5Sum< ::am_planning::PathFromPolygon > 
template<>
struct MD5Sum< ::am_planning::PathFromPolygonResponse>
{
  static const char* value()
  {
    return MD5Sum< ::am_planning::PathFromPolygon >::value();
  }
  static const char* value(const ::am_planning::PathFromPolygonResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::am_planning::PathFromPolygonResponse> should match 
// service_traits::DataType< ::am_planning::PathFromPolygon > 
template<>
struct DataType< ::am_planning::PathFromPolygonResponse>
{
  static const char* value()
  {
    return DataType< ::am_planning::PathFromPolygon >::value();
  }
  static const char* value(const ::am_planning::PathFromPolygonResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AM_PLANNING_MESSAGE_PATHFROMPOLYGON_H
