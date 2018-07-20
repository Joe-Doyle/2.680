# include <stdio.h>
# include <math.h>

int num = 0;
 
// A function to print all prime factors of a given number n
void primeFactors(int n)
{
    // Print the number of 2s that divide n
    while (n%2 == 0)
    {
        printf("%d ", 2);
        n = n/2;
				num = num + 1;
    }
 
    // n must be odd at this point.  So we can skip 
    // one element (Note i = i +2)
    for (int i = 3; i <= sqrt(n); i = i+2)
    {
        // While i divides n, print i and divide n
        while (n%i == 0)
        {
            printf("%d ", i);
            n = n/i;
						num = num + 1;
        }
    }
 
    // This condition is to handle the case when n 
    // is a prime number greater than 2
    if (n > 2)
			printf ("%d ", n);
		
		printf ("%d ", num);
}
 
/* Driver program to test above function */
int main()
{
    int n = 315;
    primeFactors(n);
    return 0;
}
