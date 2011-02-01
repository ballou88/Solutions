#include<iostream>
using namespace std;
int main()
{
	int a = 0;
	int a_ans = 0;
	int b = 0;
	int b_ans = 0;
	int c = 0;
	int c_ans = 0;
	for(int m=0;m<=1000;m++)
	{
		for(int n=m+1;n<=1000;n++)
		{
			a = n*n - m*m;
			b = 2*m*n;
			c = n*n + m*m;
			if( a+b+c == 1000)
			{
				a_ans = a;
				b_ans = b;
				c_ans = c;
			}
		}
	}
	cout << "a is:" << a_ans << endl;
	cout << "b is:" << b_ans << endl;
	cout << "c is:" << c_ans << endl;
}	
