# Viz_Marker component

## License

GNU LGPL v3, see LICENSE

## Introduction

The Viz_Marker component is a (simple) component to facilitate the use of
visualization messages in Orocos/RTT.  Using these messages it
becomes easy to visualize aspectst of your Orocos/RTT application
such as traces of the end effector or visualization of objects.

It translates outputs of KDL Frames or KDL Vectors into visualization messages.

## Installation

## Running example

The launch directory contains a roslaunch file to start up a small example:
``` roslaunch viz_marker example.launch ```

The `scripts/deploy` directory contains the deployment script of the example.
The `rviz/empty.rviz` file contains the configuration for RVIZ to display
the messages.


## Component documentation

Steps needed for visualization:
 - import necessary libraries ( with depl referring to the deployer):

```python
depl:import("rtt_ros")
depl:import("rtt_rosnode")
depl:import("rtt_roscomm")
depl:import("rtt_visualization_msgs")
ros = rtt.provides():provides("ros")
depl:import("viz_marker")
```

 - load a viz_marker component

```python
depl:loadComponent("viz", "Viz_Marker")
viz = depl:getPeer("viz")
``` 

 - set properties to indicate how you want to visualize (see the API below).  Some of the
   more important properties:
        - **type** changes to type of object to visualize.  It is also possible to visualize a mesh.
          see [ROS documentation](http://wiki.ros.org/rviz/DisplayTypes/Marker) for more detail.
        - **lifetime** how long the object remains visible
        - **frameid**  the frame with respect to which the locations are expressed
        - **port_type** if you like to specify the frame or  only position (e.g. for points)
        - **nrofmarkers** the number of markers you want to display, a seperate port will be created
         for each of the markers.  For the list types (5,6,7,8 and 11) one visualization message will
         be sent for all markers, for the other types, multiple messages will be sent.
        - **accumulate** assembles a given number of points before a message is send out.  If dealing with
          a large number of points, this is more efficient.
        - **resend**, if true the visualization message will be resend, even when there is no new input.  Resending
          will only start once there is an input, but it is not necessary to writing to the input port in order to 
          make sure that RViz picks it up.
 - configure the viz_marker component

```python
viz:configure()
```

 -  connect component to Ros topic, this can be done by using a topic of default type:

```python
depl:stream("viz.output", ros:topic("/marker_visualizations"))
```

    or using a buffered topic:

```python
depl:stream("viz.output", ros:topicBuffer("/marker_visualizations",nrofmarkers))
```
    
 - it is recommended to use a buffered topic when using with multiple markers for a non-list object
   type. (otherwise the messages for some of the markers will be dropped).

 - add activity and start component 

```python
   depl:setActivity("viz", 0.03, 50, rtt.globals.ORO_SCHED_RT)
   viz:start()
```



## Component interface:

```python
TaskContext: viz
   state: Running
   isActive: true
   getPeriod: 0.03
   Peers: 
   Services: input1, input2, input3, input4, input5, output
   Ports: 
       output [out, /visualization_msgs/Marker, conn, local] 
            // output port that gives out visualization_msgs/Marker messages for 
            // ROS/RVIZ (buffered connection is typically used)
       input1 [in, KDL.Frame, conn, local] 
            // the pose (or only position for _LIST types) of the corresponding marker
       input2 [in, KDL.Frame, conn, local] 
            // the pose (or only position for _LIST types) of the corresponding marker
       input3 [in, KDL.Frame, conn, local] 
            // the pose (or only position for _LIST types) of the corresponding marker
       input4 [in, KDL.Frame, conn, local] 
            // the pose (or only position for _LIST types) of the corresponding marker
       input5 [in, KDL.Frame, conn, local] 
            // the pose (or only position for _LIST types) of the corresponding marker
   Attributes:
   Properties:
      nrofmarkers (int) = 5  // number of markers to display
      red (double) = 0       // red component of marker color
      green (double) = 1     // green component of marker color
      blue (double) = 0      // blue component of marker color
      alpha (double) = 1     // alpha component of marker color
      scalex (double) = 0.12 // scalex component of marker color
      scaley (double) = 0.12 // scaley component of marker color
      scalez (double) = 0.2  // scalez component of marker color
      frameid (string) = robot_base_link 
                     // frame id of the frame in which the data is expressed
      type (int) = 3 // type of the marker: 
                     // ARROW=0,CUBE=1,SPHERE=2,CYLINDER=3,LINE_STRIP=4,
                     // LINE_LIST=5,CUBE_LIST=6,SPHERE_LIST=7,
                     // POINTS=8,TEXT=9,MESH_RESOURCE=10 (see ROS doc)
      mesh_resource (string) =  // stl file to visualize (type should be MESH_RESOURCE)
      lifetime (double) = 0.1   // lifetime of the marker(s), in seconds, -1 = forever
      text (string) =           // if type==9, this will contain the text to 
                                // be displayed (scale_z is height of 'A')
      port_type (int) = 0       //  0 for KDL Frame input ports, 
                                //  1 for KDL Vector input ports (default 0)
      accumulate (int) = 0      //  < 0 for no accumulation, otherwise send only an 
                                // accumulated message after n times 
                                // (for LIST type of objects only)
      resend (bool) = false     // if true old data will be resend if no new input
                                // to avoid having to write a component for static objects.
   Operations:
      bool loadService(string const& service_name) // Loads a service known to RTT into this component.
```


### Author

Component and documentation:

E. Aertbelien, March 2016.

