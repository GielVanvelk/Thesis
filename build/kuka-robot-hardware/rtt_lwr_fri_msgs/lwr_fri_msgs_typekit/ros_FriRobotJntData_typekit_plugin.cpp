#include <lwr_fri_msgs/boost/FriRobotJntData.h>
#include <rtt/types/TypekitPlugin.hpp>
#include <rtt/types/StructTypeInfo.hpp>
#include <rtt/types/PrimitiveSequenceTypeInfo.hpp>
#include <rtt/types/CArrayTypeInfo.hpp>
#include <vector>

// Note: we need to put these up-front or we get gcc compiler warnings:
// <<warning: type attributes ignored after type is already defined>>        
template class RTT_EXPORT RTT::internal::DataSource< lwr_fri_msgs::FriRobotJntData >;
template class RTT_EXPORT RTT::internal::AssignableDataSource< lwr_fri_msgs::FriRobotJntData >;
template class RTT_EXPORT RTT::internal::AssignCommand< lwr_fri_msgs::FriRobotJntData >;
template class RTT_EXPORT RTT::internal::ValueDataSource< lwr_fri_msgs::FriRobotJntData >;
template class RTT_EXPORT RTT::internal::ConstantDataSource< lwr_fri_msgs::FriRobotJntData >;
template class RTT_EXPORT RTT::internal::ReferenceDataSource< lwr_fri_msgs::FriRobotJntData >;
template class RTT_EXPORT RTT::OutputPort< lwr_fri_msgs::FriRobotJntData >;
template class RTT_EXPORT RTT::InputPort< lwr_fri_msgs::FriRobotJntData >;
template class RTT_EXPORT RTT::Property< lwr_fri_msgs::FriRobotJntData >;
template class RTT_EXPORT RTT::Attribute< lwr_fri_msgs::FriRobotJntData >;
template class RTT_EXPORT RTT::Constant< lwr_fri_msgs::FriRobotJntData >;

namespace rtt_roscomm {
  using namespace RTT;
    // Factory function
    
      void rtt_ros_addType_lwr_fri_msgs_FriRobotJntData() {
           // Only the .msg type is sent over ports. The msg[] (variable size) and  cmsg[] (fixed size) exist only as members of larger messages
           RTT::types::Types()->addType( new types::StructTypeInfo<lwr_fri_msgs::FriRobotJntData>("/lwr_fri_msgs/FriRobotJntData") );
           RTT::types::Types()->addType( new types::PrimitiveSequenceTypeInfo<std::vector<lwr_fri_msgs::FriRobotJntData> >("/lwr_fri_msgs/FriRobotJntData[]") );
           RTT::types::Types()->addType( new types::CArrayTypeInfo<RTT::types::carray<lwr_fri_msgs::FriRobotJntData> >("/lwr_fri_msgs/cFriRobotJntData[]") );
      }

    
}

