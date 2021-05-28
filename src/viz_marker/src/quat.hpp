#ifndef ETASL_RTT_QUAT
#define ETASL_RTT_QUAT
#include <kdl/frames.hpp>

    KDL::Rotation setQuaternion(double x,double y,double z, double w);
	
    void getQuaternion(const KDL::Rotation& R, double& x, double& y, double &z, double& w);

#endif
