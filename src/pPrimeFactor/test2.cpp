#include <iostream>
#include <cstdlib>

using namespace std;

stringstream ss();

int main (int argc, char **argv){

	num = atoi(argv[1]);

	for (int i=2; i <= num; i++)
		{
			while(num % i == 0)
				{
					num /= i;// "num" divided by "i" is now "num"
					int answer+=i;
					ss<<answer<<",";
				}
		}

	cout << ss << endl;






}
