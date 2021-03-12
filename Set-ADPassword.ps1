function Set-ADPassword {
    [cmdletBinding()]

      param (
  
      #Username of the user to be reset 
      [Parameter(Mandatory)]
      [string]$username,

      #New Password
      [Parameter(Mandatory)]
      [SecureString]$password
      )
      
      Set-AdAccountPassword -Identity $username -NewPassword $securePassword -Reset 
      Set-AdUSer -identity $username -ChangePasswordAtLogon $true
  
  }
