/************************************************************/
/*    NAME: Joe Doyle                                       */
/*    ORGN: MIT                                             */
/*    FILE: PointAssign.h                                   */
/*    DATE: 7/23/18                                         */
/************************************************************/

#include <iterator>
#include <string>
#include <vector>
#include <MBUtils.h>

#ifndef PointAssign_HEADER
#define PointAssign_HEADER



#include "MOOS/libMOOS/MOOSLib.h"

using namespace std;

class PointAssign : public AppCastingMOOSApp
{
 public:
   PointAssign();
   ~PointAssign();

 protected: // Standard MOOSApp functions to overload  
   bool OnNewMail(MOOSMSG_LIST &NewMail);
   bool Iterate();
   bool OnConnectToServer();
   bool OnStartUp();
   bool buildReport();

 protected:
   void RegisterVariables();

 private: // Configuration variables

 private: // State variables
};

#endif 
