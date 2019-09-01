// this pice of code demonstrate how to print a very large or small number so that in the consol you can see it in scientific manner

#include <stdio.h>
#include <stdlib.h>

int main()
{
	float data;

	data = 0.023;

                printf ("e = %g\n",data);
  			  // %g shows scientific notation when a value is large		
                printf ("e = %e\n",data);
			  // %e always shows scientific notation
			  printf ("e = %.3e\n",data);
			  // %e always shows scientific notation with 3 decimals

	return 0;
}


