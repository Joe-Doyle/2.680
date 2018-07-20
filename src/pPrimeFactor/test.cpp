#include <cstdlib>
#include <iostream>
#include <sstream>
#include <cstdint>

using namespace std;

stringstream ss;
uint64_t tval = 2;
int num = 0;

int main (int argc, char** argv){
	string str = argv[1];
	uint64_t value = strtoul(argv[1], NULL, 0);
	uint64_t uval = value;

	while(tval*tval <= value){
		num = num + 1;
		if(uval % tval == 0){
			ss << tval << ",";
			cout << tval << endl;
			uval = uval/tval;
			tval = 2;
		}
		else{
			tval = tval + 1;
		} 
	}

	ss << uval;

	cout << ss.str() << endl;
	cout << "number of operations: " << num << endl;

	return(0);
}

