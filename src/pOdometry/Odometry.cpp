/************************************************************/
/*    NAME: Joseph Doyle                                    */
/*    ORGN: MIT                                             */
/*    FILE: Odometry.cpp                                    */
/*    DATE: 7/2/18                                          */
/************************************************************/

#include <iterator>
#include <math.h>
#include "MBUtils.h"
#include "Odometry.h"

using namespace std;

//---------------------------------------------------------
// Constructor

Odometry::Odometry()
{
	bool   m_first_reading;
	double m_current_x;
	double m_current_y;
	double m_previous_x;
	double m_previous_y;
	double m_total_distance;
}

//---------------------------------------------------------
// Destructor

Odometry::~Odometry()
{
}

//---------------------------------------------------------
// Procedure: OnNewMail

bool Odometry::OnNewMail(MOOSMSG_LIST &NewMail)
{
	AppCastingMOOSApp::OnNewMail(NewMail);
	
  MOOSMSG_LIST::iterator p;
   
  for(p=NewMail.begin(); p!=NewMail.end(); p++) {
    CMOOSMsg &msg = *p;

    string key   = msg.GetKey();
    double dval  = msg.GetDouble();

		if(key == "NAV_X"){
			m_previous_x = m_current_x;
			m_current_x = dval;
		}

		if(key == "NAV_Y"){
			m_previous_y = m_current_y;
			m_current_y = dval;
		}

	}
	
   return(true);
}

//---------------------------------------------------------
// Procedure: OnConnectToServer

bool Odometry::OnConnectToServer()
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

bool Odometry::Iterate()
{
	AppCastingMOOSApp::Iterate();

	if(m_first_reading){
		m_first_reading = false;
		return(true);
	}

	double diff_x = m_current_x - m_previous_x;
	double diff_y = m_current_y - m_previous_y;

	m_total_distance = m_total_distance + sqrt(pow(diff_x, 2) + pow(diff_y, 2)); //2D distance formula

	Notify("ODOMETRY_DIST", m_total_distance);
	
	AppCastingMOOSApp::PostReport();
  return(true);
}

//---------------------------------------------------------
// Procedure: OnStartUp()
//            happens before connection is open

bool Odometry::OnStartUp()
{
	AppCastingMOOSApp::OnStartUp();

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

void Odometry::RegisterVariables()
{
  // Register("FOOBAR", 0);
	AppCastingMOOSApp::RegisterVariables();
	
	Register("NAV_X", 0);
	Register("NAV_Y", 0);
}

bool Odometry::buildReport()
{
	m_msgs << "total distance: " << m_total_distance << endl;

		return(true);
}
