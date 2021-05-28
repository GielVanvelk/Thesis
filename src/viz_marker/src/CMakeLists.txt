
#
# Components, types and plugins.
#
# The CMake 'target' names are identical to the first argument of the
# macros below, except for orocos_typegen_headers, where the target is fully
# controlled by generated code of 'typegen'.
#

# Creates a component library libviz_marker-<target>.so
# and installs in the directory lib/orocos/viz_marker/
#
orocos_component(viz_marker viz_marker-component.hpp viz_marker-component.cpp quat.cpp) # ...you may add multiple source files
target_link_libraries(viz_marker ${catkin_LIBRARIES})
#
# You may add multiple orocos_component statements.

#
# Additional headers:
#
# Installs in the include/orocos/viz_marker/ directory
#
orocos_install_headers(viz_marker-component.hpp) # ...you may add multiple header files
#
# You may add multiple orocos_install_headers statements.

