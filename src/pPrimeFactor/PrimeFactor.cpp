/************************************************************/
/*    NAME: Joe Doyle                                       */
/*    ORGN: MIT                                             */
/*    FILE: PrimeFactor.cpp                                 */
/*    DATE:7/5/18                                           */
/************************************************************/

#include <iterator>
#include <sstream>
#include <math.h>
#include <string>
#include <list>
#include "MBUtils.h"
#include "PrimeFactor.h"
#include <cstdint>
#include <cstdlib>
#include <ctime>

using namespace std;

//---------------------------------------------------------
// Constructor

PrimeFactor::PrimeFactor()
{
	double m_num_value;
	list<string> m_input_values;
	int count = 0;
}

//---------------------------------------------------------
// Destructor

PrimeFactor::~PrimeFactor()
{
}

//---------------------------------------------------------
// Procedure: OnNewMail

bool PrimeFactor::OnNewMail(MOOSMSG_LIST &NewMail)
{
  MOOSMSG_LIST::iterator p;
   
  for(p=NewMail.begin(); p!=NewMail.end(); p++) {
    CMOOSMsg &msg = *p;

    string key   = msg.GetKey();
    double dval  = msg.GetDouble();
    string sval  = msg.GetString(); 
		uint64_t value = 500;
		uint64_t tval = 2;
		stringstream primes;
		stringstream output;
		
		if(key == "NUM_VALUE"){
			uint64_t value = strtoul(sval.c_str(), NULL, 0);

			//			count = count + 1;
		
			output << "orig=" << value << ",recieved="  << ",calculated=";

			uint64_t uval = value;

			double start=MOOSTime();
	 
			while(tval*tval <= value){
				if(uval % tval == 0){
					primes << tval << ",";
 					uval = uval/tval;
					tval = 2;
				}
				else{
					tval = tval + 1;
				} 
			}

			double totalTime = MOOSTime() - start;

			output << ",solve_time=" << totalTime << ",primes=" << primes.str() << ",username=jadoyle";

			Notify("PRIME_RESULT", output.str());
		}
	}
	
   return(true);
}

//---------------------------------------------------------
// Procedure: OnConnectToServer

bool PrimeFactor::OnConnectToServer()
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

bool PrimeFactor::Iterate()
{
  return(true);
}

//---------------------------------------------------------
// Procedure: OnStartUp()
//            happens before connection is open

bool PrimeFactor::OnStartUp()
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

void PrimeFactor::RegisterVariables()
{
  // Register("FOOBAR", 0);
	Register("NUM_VALUE", 0);
}

