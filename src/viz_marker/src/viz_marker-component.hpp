#ifndef OROCOS_VIZ_MARKER_COMPONENT_HPP
#define OROCOS_VIZ_MARKER_COMPONENT_HPP

#include <rtt/RTT.hpp>
#include <visualization_msgs/Marker.h>
#include <kdl/frames.hpp>

class Viz_Marker : public RTT::TaskContext {
    typedef RTT::InputPort<KDL::Frame>  InputPortType;
    typedef RTT::InputPort<KDL::Vector> InputPortType2;

    int         nrofmarkers;
    double      red;
    double      green;
    double      blue;
    double      alpha;
    double      scalex;
    double      scaley;
    double      scalez;
    std::string frameid;
    int         type;
    std::string mesh_resource;
    double      lifetime;
    std::string text;
    int         port_type;
    int         accumulate;
    bool        resend;
    RTT::OutputPort<visualization_msgs::Marker> outport;
    std::vector< boost::shared_ptr<InputPortType> > inports;
    std::vector< boost::shared_ptr<InputPortType2> > inports2;
    visualization_msgs::Marker                      msg;
    int id_counter;
    int p_counter;

    /**
     * \brief for updating the viz. msgs while running.
     * Only for parameters that can be updated:
     *  - colors and alpha
     *  - scales
     *  - type ( only changeable between types 0, 1,2,3,9 and 10!)
     *  - mesh_resource
     *  - lifetime
     *  - frameid
     *  - text
     * can be executed while running
     */ 
    virtual bool reconfigure();

  public:
    Viz_Marker(std::string const& name);
    bool configureHook();
    bool startHook();
    void updateHook();
    void stopHook();
    void cleanupHook();
};
#endif
