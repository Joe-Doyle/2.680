/************************************************************/
/*    NAME: Joe Doyle                                              */
/*    ORGN: MIT                                             */
/*    FILE: Relayer.cpp                                        */
/*    DATE:                                                 */
/************************************************************/

#include <iterator>
#include "MBUtils.h"
#include "Relayer.h"

using namespace std;

//---------------------------------------------------------
// Constructor

Relayer::Relayer()
{
}

//---------------------------------------------------------
// Destructor

Relayer::~Relayer()
{
}

//---------------------------------------------------------
// Procedure: OnNewMail

bool Relayer::OnNewMail(MOOSMSG_LIST &NewMail)
{
  MOOSMSG_LIST::iterator p;
   
  for(p=NewMail.begin(); p!=NewMail.end(); p++) {
    CMOOSMsg &msg = *p;
    string key   = msg.GetKey();
    string sval  = msg.GetString();     

#if 0 // Keep these around just for template
    string comm  = msg.GetCommunity();
    double dval  = msg.GetDouble();
    string msrc  = msg.GetSource();
    double mtime = msg.GetTime();
    bool   mdbl  = msg.IsDouble();
    bool   mstr  = msg.IsString();
#endif
  

    if(key == "VISIT_POINT_GILDA"){
      Notify("VISIT_POINT_GILDA_NEW", sval);
    }

    if(key == "VISIT_POINT_HENRY"){
      Notify("VISIT_POINT_HENRY_NEW", sval);
    }
  }
	
   return(true);
}

//---------------------------------------------------------
// Procedure: OnConnectToServer

bool Relayer::OnConnectToServer()
{
   // register for variables here
   // possibly look at the mission file?
   // m_MissionReader.GetConfigurationParam("Name", <string>);
   // m_Comms.Register("VARNAME", 0);
	
   RegisterVariables();
   return(true);
}

//---------------------------------------------------------
// Procedure: Iterate()
//            happens AppTick times per second

bool Relayer::Iterate()
{
  return(true);
}

//---------------------------------------------------------
// Procedure: OnStartUp()
//            happens before connection is open

bool Relayer::OnStartUp()
{
  list<string> sParams;
  m_MissionReader.EnableVerbatimQuoting(false);
  if(m_MissionReader.GetConfiguration(GetAppName(), sParams)) {
    list<string>::iterator p;
    for(p=sParams.begin(); p!=sParams.end(); p++) {
      string line  = *p;
      string param = tolower(biteStringX(line, '='));
      string value = line;
      
      if(param == "foo") {
        //handled
      }
      else if(param == "bar") {
        //handled
      }
    }
  }
  
  RegisterVariables();	
  return(true);
}

//---------------------------------------------------------
// Procedure: RegisterVariables

void Relayer::RegisterVariables()
{
  // Register("FOOBAR", 0);
  Register("VISIT_POINT_HENRY", 0);
  Register("VISIT_POINT_GILDA", 0);
}

