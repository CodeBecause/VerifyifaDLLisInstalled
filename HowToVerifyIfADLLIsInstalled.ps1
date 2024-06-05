# Define the name of the DLL to check
$dllName = "example.dll"

# Define the list of directories to search for the DLL
$directories = @(
    "C:\Windows\System32",
    "C:\Windows\SysWOW64",
    "C:\Program Files",
    "C:\Program Files (x86)"
)

# Function to check if the DLL is present in the specified directory
function Check-DllInstalled {
    param (
        [string]$dllName,
        [string[]]$directories
    )
    
    foreach ($directory in $directories) {
        $dllPath = Join-Path -Path $directory -ChildPath $dllName
        if (Test-Path -Path $dllPath) {
            Write-Host "DLL found: $dllPath"
            return $true
        }
    }
    Write-Host "DLL not found."
    return $false
}

# Check if the DLL is installed
$dllInstalled = Check-DllInstalled -dllName $dllName -directories $directories

if ($dllInstalled) {
    Write-Host "$dllName is installed."
} else {
    Write-Host "$dllName is not installed."
}