# generated from rosidl_cmake/cmake/rosidl_cmake_aggregate_target-extras.cmake.in

# Create a convenience aggregate target auto_aim_interfaces::auto_aim_interfaces
# that links all generated interface targets, so downstream packages can use
# a single modern CMake target name instead of ${auto_aim_interfaces_TARGETS}.
if(auto_aim_interfaces_TARGETS AND NOT TARGET auto_aim_interfaces::auto_aim_interfaces)
  add_library(auto_aim_interfaces::auto_aim_interfaces INTERFACE IMPORTED)
  set_target_properties(auto_aim_interfaces::auto_aim_interfaces PROPERTIES
    INTERFACE_LINK_LIBRARIES "${auto_aim_interfaces_TARGETS}")
endif()
