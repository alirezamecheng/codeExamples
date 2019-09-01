// https://www.codeproject.com/Articles/4027/Writing-a-self-destructing-exe-file
// From above URL


// this is the name of the temporary .bat file
static const char tempbatname[] = "_uninsep.bat" ;

void Selfdestruct() 
{
  // temporary .bat file
  static char templ[] = 
    ":Repeat\r\n"
    "del \"%s\"\r\n"
    "if exist \"%s\" goto Repeat\r\n"
    "rmdir \"%s\"\r\n"
    "del \"%s\"" ;


  char modulename[_MAX_PATH] ;    // absolute path of calling .exe file
  char temppath[_MAX_PATH] ;      // absolute path of temporary .bat file
  char folder[_MAX_PATH] ;

  GetTempPath(_MAX_PATH, temppath) ;
  strcat(temppath, tempbatname) ;

  GetModuleFileName(NULL, modulename, MAX_PATH) ;
  strcpy (folder, modulename) ;
  char *pb = strrchr(folder, '\\');
  if (pb != NULL)
    *pb = 0 ;

  HANDLE hf ;
  
  hf = CreateFile(temppath, GENERIC_WRITE, 0, NULL, 
              CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL) ;
  
  if (hf != INVALID_HANDLE_VALUE)
  {
    DWORD len ;
    char *bat ;

    bat = (char*)alloca(strlen(templ) + 
               strlen(modulename) * 2 + strlen(temppath) + 20) ;

    wsprintf(bat, templ, modulename, modulename, folder, temppath) ;

    WriteFile(hf, bat, strlen(bat), &len, NULL) ;
    CloseHandle(hf) ;

    ShellExecute(NULL, "open", temppath, NULL, NULL, SW_HIDE);
  }
}
