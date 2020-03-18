// For introducing a header file globally in an ARBITRARY location 
// Try setting 
// C_INCLUDE_PATH (for C header files) 
// or 
// CPLUS_INCLUDE_PATH (for C++ header files).
// CPATH will set the path for both C and C++.

#include <stdio.h>
#include <library.h> // For globally available headers
// #include <library.h> // For locally available headers
int main()
{
    printf("we are in \n");
    myfunc();
    return 0;
}