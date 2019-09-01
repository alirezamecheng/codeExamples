#include<stdio.h>



void main()
{
	int numberOfIttereations = 1000; // it is not a nessesary veriable 
	
	//###################WE NEED THESE################################
	int spaceBetweenItterationsForPrint = 100; // nessesary veriable 
	int printPageDeadline = 0; // nessesary veriable
	int i = 0; // loop counter nessesary
	int NAMEFRACTION = 1000000; // number of zeros  befor name 
	//################################################################
	
	// a tempurary String to be printed 
	char str[] = "this is a printing to file test by Alireza Ghavami Nia\n\r";	

	for (i=0;i<=numberOfIttereations;i++) // main loop 
	//while (true)
	{ 	//i = i+1;// if using while it is nessesary to have a looper.

		// ############################COPY FROM HERE##################################
		if (i == printPageDeadline)
		{		
				printf("itt = %d\n",i); // to show in screen 

				char fileNameString[32]; // creating file name buffer.
				
				// put "file" name in the string  it makes file name in the string each time.
				snprintf(fileNameString,sizeof(char)*32, "file%lf.txt",(double)i/NAMEFRACTION);
				
				// here we get some data into variable data
				
				FILE *myFileIndicator; // defining the file 
				myFileIndicator = fopen(fileNameString,"w");// opening the file 
				
				// writing some data to file 
				fwrite(str, 1 , sizeof(str) , myFileIndicator); // to write string 
				fprintf(myFileIndicator,"\nitterate = %d\n",(int)i); // to write some simple text
				
				// to print a matrix in arbitrary way 
				int m=0,n=0;
				for(m=0;m<=10;m++)
					for(n=0;n<=10;n++)
					{fprintf(myFileIndicator,"i = %d  and  j = %d   and   i x j = %d\n",m,n,n*m);}
				
				// end of writing 
				
				
				fclose(myFileIndicator); // closing the file 
				
				printPageDeadline = printPageDeadline + spaceBetweenItterationsForPrint; // changing if condition 
		} // end of printing period if 
		//############################END OF SESION####################################
		
	} // end of loop 
} // end of main 