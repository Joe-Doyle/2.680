/************************************************************/
/*    NAME: Joe Doyle                                              */
/*    ORGN: MIT                                             */
/*    FILE: Relayer.h                                          */
/*    DATE:                                                 */
/************************************************************/

#ifndef Relayer_HEADER
#define Relayer_HEADER

#include "MOOS/libMOOS/MOOSLib.h"

class Relayer : public CMOOSApp
{
 public:
   Relayer();
   ~Relayer();

 protected: // Standard MOOSApp functions to overload  
   bool OnNewMail(MOOSMSG_LIST &NewMail);
   bool Iterate();
   bool OnConnectToServer();
   bool OnStartUp();

 protected:
   void RegisterVariables();

 private: // Configuration variables

 private: // State variables
};

#endif 
