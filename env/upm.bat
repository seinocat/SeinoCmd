@echo off

if /i "%1%"=="" (
    echo invalid command. please enter release/push/tag/clear.
    exit /b 1
)

if /i "%1%"=="release" (

     if "%2" == "" (
        echo %2
        echo no target, exiting...
        exit /b 1
     ) 

     if "%3" == "" (
            echo %3
            echo no tags, exiting...
            exit /b 1
     )
         
     cd /d  %github%%2
     echo cd %github%%2
        
     echo start release %2 %3...
        
     call %github%%2\Bat\release.bat %3
        
     echo.
     echo %2 %3 release success
     
) else if /i "%1%"=="push" (

     if "%2" == "" (
        echo %2
        echo no target, exiting...
        exit /b 1
     )
 
     cd /d  %github%%2
        
     echo start push %2 ...
        
     call %github%%2\Bat\push.bat
        
     echo.
     echo %2 push success
     
) else if /i "%1%"=="tag" (

     if "%3" == "" (
        echo %3
        echo no tags, exiting...
        exit /b 1
     )
  
     cd /d  %github%%2
         
     echo start tag %2 ...
         
     call %github%%2\Bat\tag.bat %3
         
     echo.
     echo %2 %3 tag success
     
) else if /i "%1%"=="clear" (
   
     cd /d  %github%%2
          
     echo start clear %2 ...
          
     call %github%%2\Bat\clear.bat
          
     echo.
     echo %2 clear success
     
) else (
     echo invalid command. please enter release/push/tag/clear.
)


