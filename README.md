# Polyomial_Equation_in_Assembly
Calculate_Polyomial_Equation_in_Assembly


This program writen in C++, I convert it in Assembly Language...

  x2 + x + 1
  y2 + y + 1



for x = 3 and y = 5.
int main ()
{
int x = 3, y = 5, temp;
temp = poly(x);
cout << x << "^2 + " << x << " + 1 = " << temp << endl;
temp = poly(y);
cout << y << "^2 + " << y << " + 1 = " << temp << endl;
}
int poly( int arg)
{
int res;
res = pow (arg ,2);
res = res + arg + 1;
return ( res );
}
int pow (int arg0 , int arg1)
{
int result ,i;
result = 1;
for (i=1; i <= arg1;i ++)
result = result * arg0;
return ( result );
}
Implement the above using Intel’s x86 ISA. Follow all the calling conventions outlined earlier.
