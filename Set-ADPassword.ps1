<#
.SYNOPSIS
This cmdlet is for easily reseting an active directory password

.PARAMETER Username
Enter a string containing the domain or workgroup of the user and the username or in some cases just the username.    
               
.PARAMETER Passwd
Enter the string value of the users new password    
#>

function Set-ADPassword {
  [cmdletBinding()]

    param (

    #Username of the user to be reset 
    [Parameter(
      Mandatory=$true,
      HelpMessage="Enter The Username: ")]
    [string]$username,

    #New Password
    [Parameter(
      Mandatory=$true,
      HelpMessage="Enter The New Password")]
    [SecureString]$password
    )
    
    Set-AdAccountPassword -Identity $username -NewPassword $securePassword -Reset 
    Set-AdUSer -identity $username -ChangePasswordAtLogon $true

}
