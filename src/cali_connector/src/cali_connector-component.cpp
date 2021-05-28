#include "cali_connector-component.hpp"
#include <rtt/Component.hpp>
#include <unistd.h>

#include <iomanip>
#include <stdio.h>
#include <cmath>
#include <vector>  
 
using namespace RTT; 
using namespace Eigen; 

namespace cali
{
/*
    Constructor of the OROCOS component.
*/
CaliConnector::CaliConnector( std::string const& _name ) : TaskContext( _name, PreOperational )   
    , msg_us_info_( 6, 0 )  
    , msg_cross_position_( 3, 0 ) 
    , msg_calibration_status_(false)
    , msg_collect_data_status_(false)
    , msg_write_finish_(false) 
    , msg_contact_water_(false)

{
    // Add properties 
    addProperty( "calibration_status",  calibration_status_ ).doc( "calibration status  true/false" );
    addProperty( "collect_data_status", collect_data_status_ ).doc( "collect us data status  true/false" );
    addProperty( "write_finish",        write_finish_ ).doc( "feedback messge to gui, finish wirting the pose to trajectory" );
   

    // Add ports.
    addPort( "in_us_info",          in_us_info_).doc( "the feedback from us image" );
    addPort( "in_cross_position",   in_cross_position_).doc( "the cross point position" );
    addPort( "in_contact_water",    in_contact_water_).doc( "us probe contact with water surface" );
    
    addPort( "out_write_finish",        out_write_finish_ ).doc( "The converted messages to ros, to notice the target point has been fill in the trajectory." );
    addPort( "out_calibration_status",  out_calibration_status_ ).doc( "The converted messages to ros, to notice the target point has been fill in the trajectory." );
    addPort( "out_collect_data_status", out_collect_data_status_ ).doc( "The converted messages to ros, to notice the target point has been fill in the trajectory." );
   
    // Add operations.

    // Show messages to the output ports to guarantee real-timeness. 
    out_collect_data_status_.setDataSample( msg_collect_data_status_);  
    out_write_finish_.setDataSample( msg_write_finish_ );  
    out_calibration_status_.setDataSample( msg_calibration_status_);


    log( Info ) << "[" << getName( ) << "] Constructed" << endlog( );
} // End of UsConnector constructor.

/*
    Configuration hook of the OROCOS component.
*/
bool CaliConnector::configureHook( )
{

    if ( msg_write_finish_ )
        {
            msg_write_finish_ = false;
        } 
    if ( msg_calibration_status_ )
        {
            msg_calibration_status_ = false;
        } 
    if ( msg_collect_data_status_ )
        {
            msg_collect_data_status_ = false;
        } 

    log( Info ) << "[" << getName( ) << "] Configured" << endlog( );
    return true;
} // End of configureHook.

/*
    Start hook of the OROCOS component.
*/
bool CaliConnector::startHook( )
{
    // Set output ports and initial msgs.  
    msg_write_finish_ = false ;
    out_write_finish_.write( msg_write_finish_ ); 
    msg_calibration_status_= false ;
    out_calibration_status_.write(  msg_calibration_status_); 
    msg_collect_data_status_= false ;
    out_collect_data_status_.write( msg_collect_data_status_); 


    // Reset input ports. 
    in_us_info_.clear(); 
    in_cross_position_.clear();
    in_contact_water_.clear();
    // Reset flags.

    log( Info ) << "[" << getName( ) << "] Started" << endlog( );
    return true;
} // End of startHook.

/*
    Update hook of the OROCOS component.
*/
void CaliConnector::updateHook( )
{
// Read the message coming from the Us and send it to other components.
    in_us_info_.read( msg_us_info_); 
    in_cross_position_.read( msg_cross_position_); 
    in_contact_water_.read( msg_contact_water_); 
    // in_cross_position_.read( msg_us_info_); 
/*
//========================== gravity compensation ==============================
    Quaterniond q;
    q.w() = msg_pose_message_.pose.orientation.w;
    q.x() = msg_pose_message_.pose.orientation.x;
    q.y() = msg_pose_message_.pose.orientation.y;
    q.z() = msg_pose_message_.pose.orientation.z;

    // ======== check if the fusion track is working =========
    bool fusion_is_working = false;
    if (msg_pose_message_.pose.position.x != 0 & msg_pose_message_.pose.position.y != 0  & msg_pose_message_.pose.position.z != 0)
    {
        fusion_is_working = true;

    } 

    // initialize paprameter with no gravity compensiation;
    msg_net_force_ [0]= msg_W_ati_ [0] ;
    msg_net_force_ [1]= msg_W_ati_ [1] ;
    msg_net_force_ [2]= msg_W_ati_ [2] ;
    msg_net_force_ [3]= msg_W_ati_ [3] ;
    msg_net_force_ [4]= msg_W_ati_ [4] ;
    msg_net_force_ [5]= msg_W_ati_ [5] ;
    if ( fusion_is_working == true )
    {
        double gx = 2 * (q.x() * q.z() - q.w() * q.y()) * 9.81 * 0.5;
        double gy = 2 * (q.w()  * q.x() + q.y() * q.z() )* 9.81 * 0.5;
        double gz = -(q.w()* q.w() - q.x()* q.x() - q.y() * q.y() +q.z()* q.z()) * 9.81 * 0.5;
        msg_net_force_ [1]= msg_W_ati_ [1] - gy;
        msg_net_force_ [2]= msg_W_ati_ [2] - gz;
        msg_net_force_ [3]= msg_W_ati_ [3] ;
        msg_net_force_ [4]= msg_W_ati_ [4] ;
        msg_net_force_ [5]= msg_W_ati_ [5] ;
    }  
    //========================== gravity compensation ==============================


    // ================ motion compensation: to move us probe ==============
    // ===== to be finished later for some function ========
    msg_tip_motion_.pose.position.x = 1 ;
    msg_tip_motion_.pose.position.y = 1 ;
    msg_tip_motion_.pose.position.z = 1 ; 
    msg_tip_motion_.pose.orientation.w = 0 ;
    msg_tip_motion_.pose.orientation.x = 0 ;
    msg_tip_motion_.pose.orientation.y = 0 ; 
    msg_tip_motion_.pose.orientation.z = 0 ; 
    // ===== to be finished later for some function ========
     

    // ====================== force emergency stop ======================
    for ( int i = 0; i < 3; i++  )
        {  
            if ( fabs(msg_net_force_[i])  >= 5.0 )
            { 
                msg_force_emergency_stop_ = "force_stop";
            }
        }
    // ====================== force emergency stop ======================
     */
    msg_collect_data_status_ = collect_data_status_;
    msg_write_finish_ = write_finish_;
    msg_calibration_status_ = calibration_status_;


    out_write_finish_.write( msg_write_finish_ );  
    out_calibration_status_.write(  msg_calibration_status_); 
    out_collect_data_status_.write(  msg_collect_data_status_); 

} // End of updateHook.

/*
    Stop hook of the OROCOS component.
*/
void CaliConnector::stopHook( )
{
    msg_write_finish_ = false ;
    out_write_finish_.write( msg_write_finish_ ); 
    msg_calibration_status_= false ;
    out_calibration_status_.write(  msg_calibration_status_); 
    msg_collect_data_status_= false ;
    out_collect_data_status_.write( msg_collect_data_status_); 

    log( Info ) << "[" << getName( ) << "] Stopped" << endlog( );
} // End of stopHook.

/*
    Cleanup hook of the OROCOS component.
*/
void CaliConnector::cleanupHook( )
{
    log( Info ) << "[" << getName( ) << "] Cleaned up" << endlog( );
} // End of cleanupHook.

} // End of namespace Usconnector.

ORO_CREATE_COMPONENT( cali::CaliConnector )
 
