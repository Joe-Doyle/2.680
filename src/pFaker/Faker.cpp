/************************************************************/
/*    NAME: Caileigh                                              */
/*    ORGN: MIT                                             */
/*    FILE: Faker.cpp                                        */
/*    DATE:                                                 */
/************************************************************/

#include <list>
#include <iterator>
#include "MBUtils.h"
#include "Faker.h"

using namespace std;

//---------------------------------------------------------
// Constructor

Faker::Faker()
{
}

//---------------------------------------------------------
// Destructor

Faker::~Faker()
{
}

//---------------------------------------------------------
// Procedure: OnNewMail

bool Faker::OnNewMail(MOOSMSG_LIST &NewMail)
{
   MOOSMSG_LIST::iterator p;
   
   for(p=NewMail.begin(); p!=NewMail.end(); p++) {
      CMOOSMsg &msg = *p;
      string key = msg.GetKey();
      string sval = msg.GetString();

   if (key == "VISITNG")
    cout << key << "=" << sval << endl;

  }
	
   return(true);
}

//---------------------------------------------------------
// Procedure: OnConnectToServer

bool Faker::OnConnectToServer()
{
   RegisterVariables();
   return(true);
}

//---------------------------------------------------------
// Procedure: Iterate()

bool Faker::Iterate()
{
   // happens AppTick times per second
	
   return(true);
}

//---------------------------------------------------------
// Procedure: OnStartUp()
// happens before connection is open

bool Faker::OnStartUp()
{
  list<string> sParams;                                                                                         
  if(m_MissionReader.GetConfiguration(GetAppName(), sParams)) {         
    list<string>::iterator p;                                           
    for(p=sParams.begin(); p!=sParams.end(); p++) {                 
      string original_line = *p;                                    
      string line = *p;                                    
      string param = stripBlankEnds(toupper(biteString(line, '=')));  
      string value = stripBlankEnds(line);
                                                           
      if(param == "FOO") {                                      
        //handled                                               
      }                                                             
      else if(param == "BAR") {                                  
        //handled                                     
      }                            
    }
  } 

  RegisterVariables();	
  return(true);
}

//---------------------------------------------------------
// Procedure: RegisterVariables

void Faker::RegisterVariables()
{
  // Register("FOOBAR", 0);
  Register("VISIT_POINT", 0);
  Register("VISITING", 0);
}
