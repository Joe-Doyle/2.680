/************************************************************/
/*    NAME: Joe Doyle                                       */
/*    ORGN: MIT                                             */
/*    FILE: PointAssign.cpp                                 */
/*    DATE: 7/25/18                                         */
/************************************************************/

#include <iterator>
#include <string>
#include <vector>
#include "MBUtils.h"
#include "PointAssign.h"

using namespace std;

int m_point_count = 0;
bool REGIONAL_DISTRO = false;
bool m_distributed = false;


//---------------------------------------------------------
// Constructor

PointAssign::PointAssign()
{

}

//---------------------------------------------------------
// Destructor

PointAssign::~PointAssign()
{
}

//---------------------------------------------------------
// Procedure: OnNewMail

bool PointAssign::OnNewMail(MOOSMSG_LIST &NewMail)
{
  //AppCastingMOOSApp::OnNewMail(NewMail);

  MOOSMSG_LIST::iterator p;
   
  for(p=NewMail.begin(); p!=NewMail.end(); p++) {
    Notify("DEBUG", "OnNewMail begin");
    CMOOSMsg &msg = *p;
    string sval  = msg.GetString(); 
    string key = msg.GetKey();

#if 0 // Keep these around just for template
    string comm  = msg.GetCommunity();
    double dval  = msg.GetDouble();
    string msrc  = msg.GetSource();
    double mtime = msg.GetTime();
    bool   mdbl  = msg.IsDouble();
    bool   mstr  = msg.IsString();
#endif

    if (key == "VISIT_POINT"){
      m_point_count++;
      m_input.push_back(sval);
      Notify("DEBUG", m_input.back());
    }
  }
  return(true);
}
      
//---------------------------------------------------------
// Procedure: OnConnectToServer

bool PointAssign::OnConnectToServer()
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

bool PointAssign::Iterate()
{
  //AppCastingMOOSApp::Iterate();

  //Notify("TEST", "good");

  //AppCastingMOOSApp::PostReport();

  if(REGIONAL_DISTRO){
  }
  else if(m_point_count >= 101 && !m_distributed){
    for(int i=0; i<102; i++){
      if(i == 0){
	Notify("VISIT_POINT_HENRY", m_input[i]);
	Notify("VISIT_POINT_GILDA", m_input[i]);
	Notify("DEBUG", "first points notified");
      }
      else if(i < 101){
	if(i % 2){
	  Notify("VISIT_POINT_HENRY", m_input[i]);
	}
	else{
	  Notify("VISIT_POINT_GILDA", m_input[i]);
	}
      }
      else{
	Notify("VISIT_POINT_HENRY", m_input[i]);
	Notify("VISIT_POINT_GILDA", m_input[i]);
	Notify("DEBUG", "last points notified");
      }
    }
    m_distributed = true;
  }	
  
  return(true);
}

//---------------------------------------------------------
// Procedure: OnStartUp()
//            happens before connection is open

bool PointAssign::OnStartUp()
{
  //AppCastingMOOSApp::OnStartUp();

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
  Notify("UTS_PAUSE", "false");
  return(true);
}

//---------------------------------------------------------
// Procedure: RegisterVariables

void PointAssign::RegisterVariables()
{
  //AppCastingMOOSApp::RegisterVariables();

  // Register("FOOBAR", 0);
  Register("VISIT_POINT", 0);
}
/*
bool PointAssign::buildReport()
{
  // m_msgs << "Number of good messages: " << m_good_message_count << endl;
  //m_msgs << "Number of bad messages: " << m_bad_message_count << endl;

  return true;
}
*/
