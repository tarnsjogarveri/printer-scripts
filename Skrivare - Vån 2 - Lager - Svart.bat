set printers=%~dp0
set drivers=%printers:Skrivare=Drivrutiner%

cscript %windir%\System32\Printing_Admin_Scripts\sv-SE\prnport.vbs -a -r IP_192.168.10.62 -h 192.168.10.62
rundll32 printui.dll,PrintUIEntry /ia /f "%drivers%\Skrivare\Brother Universal\eng\BHPCL5E.INF" /m "Brother PCL5e Driver"
rundll32 printui.dll,PrintUIEntry /if /b "V�n 2 - Lager - Svart" /r "IP_192.168.10.62" /f "%drivers%\Skrivare\Brother Universal\eng\BHPCL5E.INF" /m "Brother PCL5e Driver"