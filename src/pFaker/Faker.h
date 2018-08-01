/************************************************************/
/*    NAME: Caileigh                                              */
/*    ORGN: MIT                                             */
/*    FILE: Faker.h                                          */
/*    DATE:                                                 */
/************************************************************/

#ifndef Faker_HEADER
#define Faker_HEADER

#include "MOOS/libMOOS/MOOSLib.h"

class Faker : public CMOOSApp
{
 public:
  Faker();
  virtual ~Faker();

  bool OnNewMail(MOOSMSG_LIST &NewMail);
  bool Iterate();
  bool OnConnectToServer();
  bool OnStartUp();
  void RegisterVariables();

protected:
  // insert local vars here
};

#endif 
