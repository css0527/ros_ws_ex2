cmake_minimum_required(VERSION 3.8)
project(daheng_simple_driver)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(cv_bridge REQUIRED)
find_package(OpenCV REQUIRED)

include_directories(/opt/ros/humble/include)


# 将 DAHENG_SDK_DIR 修改为官方 SDK 的真实绝对路径
set(DAHENG_SDK_DIR "/home/xinzhu/Downloads/Galaxy_Linux-x86_Gige-U3_32bits-64bits_2.4.2507.9231/Galaxy_camera")

# 官方 SDK 的头文件在 inc 目录下
include_directories(${DAHENG_SDK_DIR}/inc)

# 官方 SDK 的库文件通常在 lib/x86_64 下
link_directories(${DAHENG_SDK_DIR}/lib/x86_64)

add_executable(driver_node src/driver_node.cpp)

ament_target_dependencies(driver_node
  rclcpp
  sensor_msgs
  cv_bridge
)

target_link_libraries(driver_node
  ${OpenCV_LIBRARIES}
  gxiapi   # 注意小写
)

install(TARGETS driver_node DESTINATION lib/${PROJECT_NAME})

ament_package()

