/************************************************************/
/*    NAME: Joseph Doyle                                    */
/*    ORGN: MIT                                             */
/*    FILE: Odometry.h                                      */
/*    DATE: 7/2/18                                          */
/************************************************************/

#ifndef Odometry_HEADER
#define Odometry_HEADER

#include "MOOS/libMOOS/MOOSLib.h"
#include "MOOS/libMOOS/Thirdparty/AppCasting/AppCastingMOOSApp.h"

class Odometry : public AppCastingMOOSApp
{
 public:
   Odometry();
   ~Odometry();

 protected: // Standard MOOSApp functions to overload  
   bool OnNewMail(MOOSMSG_LIST &NewMail);
   bool Iterate();
   bool OnConnectToServer();
   bool OnStartUp();

 protected:
   void RegisterVariables();

 private: // Configuration variables

 private: // State variables
	 bool   m_first_reading = true;
	 double m_current_x = 0;
	 double m_current_y = 0;
	 double m_previous_x = 0;
	 double m_previous_y = 0;
	 double m_total_distance = 0;

	 bool buildReport();
};

#endif 
