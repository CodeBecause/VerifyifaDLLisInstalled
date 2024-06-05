# VerifyifaDLLisInstalled
PowerShell for users to verify if a specified DLL is installed

# Explination
$dllName: Specifies the name of the DLL you want to check.

$directories: An array of directories where the script will search for the DLL. You can add or remove directories based on where you expect the DLL might be installed.

Check-DllInstalled Function: This function takes the DLL name and the list of directories as parameters, and checks each directory to see if the DLL exists.

Test-Path: Used to check if the DLL file exists in the specified path.

Write-Host: Outputs the result to the console.

Calling the Function: The script calls the Check-DllInstalled function and outputs whether the DLL is installed or not.

# How to Run the PowerShell

Open PowerShell as an administrator.
Copy and paste the script into the PowerShell window or save it as a .ps1 file and run it.
Modify the $dllName and $directories variables as needed to fit your requirements.

Extra

Additional Directories: You can add more directories to the $directories array if you have specific paths where the DLL might be installed.
Different DLL Names: Change the value of $dllName to check for different DLL files.
This script provides a straightforward way to verify if a specific DLL is installed on your system by checking common directories where DLLs are typically found.





