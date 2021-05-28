#include "viz_marker-component.hpp"
#include <rtt/Component.hpp>
#include <iostream>
#include <sstream>
#include <kdl/frames.hpp>
#include <ros/time.h>
#include <ros/duration.h>
#include "quat.hpp"

Viz_Marker::Viz_Marker(std::string const& name) : 
    TaskContext(name),
    nrofmarkers(1),
    red(0),green(1),blue(0),alpha(1),
    scalex(0.05),scaley(0.05),scalez(0.05),
    frameid("base_link"),
    type(6),
    mesh_resource(""),
    lifetime(-1),
    text(""),
    port_type(0),
    accumulate(0),
    resend(false)
{

    this->addProperty("nrofmarkers",nrofmarkers)
        .doc("number of markers to display");

    this->addProperty("red",red )
        .doc("red component of marker color");
    this->addProperty("green",green)
        .doc("green component of marker color");
    this->addProperty("blue",blue )
        .doc("blue component of marker color");
    this->addProperty("alpha",alpha )
        .doc("alpha component of marker color");

    this->addProperty("scalex",scalex )
        .doc("scalex component of marker color");
    this->addProperty("scaley",scaley )
        .doc("scaley component of marker color");
    this->addProperty("scalez",scalez )
        .doc("scalez component of marker color");
    
    this->addProperty("frameid",frameid )
        .doc("frame id of the frame in which the data is expressed");
    this->addProperty("type",type )
        .doc("type of the marker: \n ARROW=0,CUBE=1,SPHERE=2,CYLINDER=3,LINE_STRIP=4,LINE_LIST=5,CUBE_LIST=6,SPHERE_LIST=7,\n POINTS=8,TEXT=9,MESH_RESOURCE=10 (see ROS doc)");
    this->addProperty("mesh_resource",mesh_resource)
        .doc("stl file to visualize (type should be MESH_RESOURCE)");
    this->addProperty("lifetime",lifetime)
        .doc("lifetime of the marker(s), in seconds, -1 = forever");
    this->addProperty("text",text)
        .doc("if type==9, this will contain the text to be displayed (scale_z is height of 'A')");
    this->addProperty("port_type",port_type)
        .doc(" 0 for KDL Frame input ports, 1 for KDL Vector input ports (default 0)");
    this->addProperty("accumulate",accumulate)
        .doc(" < 0 for no accumulation, otherwise only an accumulated message after n times (for LIST type of objects only)");
    this->addPort("output",outport)
        .doc("output port that gives out visualization_msgs/Marker messages for ROS/RVIZ (buffered connection is typically used)");
    this->addProperty("resend",resend)
        .doc("if true old data will be resend if no new input");

    this->addOperation("reconfigure",&Viz_Marker::reconfigure,this,RTT::OwnThread)
        .doc("reconfigures on-line (while running) the visualization when properties have changed (see API docs for more details");
}

bool Viz_Marker::configureHook(){

  for (int i=0;i<nrofmarkers;++i) {
      std::ostringstream name;
      name << "input" << i+1;
      if (port_type==0) {
        inports.push_back( boost::make_shared< InputPortType >());
        this->addPort(name.str(),*inports[i]).doc("the pose (or only position for _LIST types) of the corresponding marker");
      } else {
        inports2.push_back( boost::make_shared< InputPortType2 >());
        this->addPort(name.str(),*inports2[i]).doc("the position of the corresponding marker");
      }
  }

  msg.header.frame_id = frameid;
  msg.ns       = getName();
  id_counter = 0;
  msg.id       = id_counter;
  msg.type     = type;
  msg.action   = 0; // add
  msg.pose.position.x = 0;
  msg.pose.position.y = 0;
  msg.pose.position.z = 0;
  msg.pose.orientation.x = 0;
  msg.pose.orientation.y = 0;
  msg.pose.orientation.z = 0;
  msg.pose.orientation.w = 1;
  msg.scale.x = scalex;
  msg.scale.y = scaley;
  msg.scale.z = scalez;
  msg.color.r = red; 
  msg.color.g = green; 
  msg.color.b = blue; 
  msg.color.a = alpha; 
  msg.text = text;
  msg.mesh_resource = mesh_resource;
  if (lifetime <= 0) {
      msg.lifetime = ros::Duration();
  } else {
      msg.lifetime = ros::Duration(lifetime);
  }
  if ((msg.type < 1) || (11 < msg.type) ) {
        RTT::log(RTT::Warning) << getName() << " : Unknown object type for visualization marker" << RTT::endlog();
  }
  if ( (type==0)||(type==1)||(type==2)||(type==3)||(type==10)||(type==9) ) {
      // non-list type, ignore accumulate
        msg.points.resize(0);
  } else {
      // list-type, take into account accumulate parameter.
      if (accumulate < 1) {
        accumulate=1;
      } 
      msg.points.resize( accumulate * nrofmarkers );
  }
  return true;
}

bool Viz_Marker::reconfigure(){
  if ((type < 1) || (11 < type) ) {
        RTT::log(RTT::Error) 
            << getName() 
            << " : Unknown object type for visualization marker" 
            << RTT::endlog();
  }
  
  if ( !( (type==0)||(type==1)||(type==2)||(type==3)||(type==10)||(type==9) ) ||
       !( (msg.type==0)||(msg.type==1)||(msg.type==2)||(msg.type==3)||(msg.type==9)||(msg.type==10))
     ) {
         RTT::log(RTT::Error) 
             << getName() 
             << " : reconfigure() only allowed between types 0, 1, 2,3 , 9 and 10" 
             << RTT::endlog();
        return false;
  }


  msg.header.frame_id    = frameid;
  msg.ns                 = getName();
  id_counter             = 0;
  msg.id                 = id_counter;
  msg.type               = type;
  msg.action             = 0; // add
  msg.pose.position.x    = 0;
  msg.pose.position.y    = 0;
  msg.pose.position.z    = 0;
  msg.pose.orientation.x = 0;
  msg.pose.orientation.y = 0;
  msg.pose.orientation.z = 0;
  msg.pose.orientation.w = 1;
  msg.scale.x            = scalex;
  msg.scale.y            = scaley;
  msg.scale.z            = scalez;
  msg.color.r            = red; 
  msg.color.g            = green; 
  msg.color.b            = blue; 
  msg.color.a            = alpha; 
  msg.text               = text;
  msg.mesh_resource      = mesh_resource;
  if (lifetime <= 0) {
      msg.lifetime = ros::Duration();
  } else {
      msg.lifetime = ros::Duration(lifetime);
  }
  return true;
}

bool Viz_Marker::startHook(){
  p_counter = 0;
  return true;
}

void Viz_Marker::updateHook(){
    msg.header.stamp = ros::Time();//::now();
    if ( (type==0)||(type==1)||(type==2)||(type==3)||(type==10)||(type==9) ) {
        // using "pose" and multiple messages (should be buffered connection)
        for (int i=0;i<nrofmarkers;++i) {
            KDL::Frame F; 
            RTT::FlowStatus fs;
            if (port_type==0) {
                fs = inports[i]->read( F );
            } else {
                KDL::Vector v;
                F = KDL::Frame::Identity();
                fs = inports2[i]->read( v );
                F.p = v;
            }
            if (( fs==RTT::NewData ) || ( (fs==RTT::OldData) && resend)) {
                msg.pose.position.x = F.p.x();
                msg.pose.position.y = F.p.y();
                msg.pose.position.z = F.p.z();
                getQuaternion(F.M, 
                            msg.pose.orientation.x,
                            msg.pose.orientation.y,
                            msg.pose.orientation.z,
                            msg.pose.orientation.w);
                id_counter++;
                msg.id = id_counter;
                outport.write( msg );
            } 
        }
    } else {
        // using "points" and a single message (only using position)
        for (int i=0;i<nrofmarkers;++i) {
            KDL::Frame F;
            RTT::FlowStatus fs = inports[i]->read( F );
            if (( fs==RTT::NewData ) || ( (fs==RTT::OldData) && resend)) {
                msg.points[p_counter].x = F.p.x();
                msg.points[p_counter].y = F.p.y();
                msg.points[p_counter].z = F.p.z();
                p_counter++;
                if ((accumulate>0)&&(p_counter >= (accumulate*nrofmarkers))) {
                    id_counter++;
                    msg.id = id_counter;
                    outport.write( msg );
                    p_counter = 0;
                }
            }
        }
    }
}

void Viz_Marker::stopHook() {
    if ( (type==0)||(type==1)||(type==2)||(type==3)||(type==10)||(type==9) ) {
    } else {
        if (accumulate>0) {
            id_counter++;
            msg.id = id_counter;
            outport.write( msg );
            p_counter=0;
        }
    }
}

void Viz_Marker::cleanupHook() {
}

/*
 * Using this macro, only one component may live
 * in one library *and* you may *not* link this library
 * with another component library. Use
 * ORO_CREATE_COMPONENT_TYPE()
 * ORO_LIST_COMPONENT_TYPE(Viz_marker)
 * In case you want to link with another library that
 * already contains components.
 *
 * If you have put your component class
 * in a namespace, don't forget to add it here too:
 */
ORO_CREATE_COMPONENT(Viz_Marker)
