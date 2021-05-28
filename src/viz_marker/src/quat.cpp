#include "quat.hpp"

    KDL::Rotation setQuaternion(double x,double y,double z, double w)
    {
        // 24 flops
        double x2 = 2*x;
        double y2 = 2*y;
        double z2 = 2*z;
        double xx = x2*x;
        double yy = y2*y;
        double zz = z2*z;
        double xy = x2*y;
        double xz = x2*z;
        double yz = y2*z;
        double wx = x2*w;
        double wy = y2*w;
        double wz = z2*w;
        return KDL::Rotation( 1 - (yy+zz),  xy-wz,     xz+wy,
                              xy+wz,        1-(xx+zz), yz-wx,
                              xz-wy,        yz+wx,   1.0 - (xx+yy) );
    }



	void getQuaternion(const KDL::Rotation& R, double& x, double& y, double &z, double& w) 
	{
		double trace = R(0,0) + R(1,1) + R(2,2);
		double temp[4];
		if (trace > 0.0) {
			double s = sqrt(trace + 1.0);
			temp[3]=(s * 0.5);
			s = 0.5 / s;
			temp[0]= s*( R(2,1) - R(1,2));
			temp[1]= s*( R(0,2) - R(2,0));
			temp[2]= s*( R(1,0) - R(0,1));
		} else {
            int i = R(0,0) < R(1,1) ? ( R(1,1) < R(2,2) ? 2 : 1 )
                                    : ( R(0,0) < R(2,2) ? 2 : 0 );
			int j = (i + 1) % 3;  
			int k = (i + 2) % 3;
			double s =  sqrt(R(i,i) - R(j,j) - R(k,k) + 1.0);
			temp[i] = s * 0.5;
			s = 0.5 / s;
			temp[3] = (R(k,j) - R(j,k)) * s;
			temp[j] = (R(j,i) + R(i,j)) * s;
			temp[k] = (R(k,i) + R(i,k)) * s;
		}
        x = temp[0];
        y = temp[1];
        z = temp[2];
        w = temp[3];
	}


