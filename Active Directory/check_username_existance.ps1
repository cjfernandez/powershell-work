# This script uses PowerShell to tie into Active Directory.
# It queries the associated AD domain to see if the value "newusername" exists.
# Credit to user:Bigteddy @ Original Post here: http://tiny.cc/1fzcyy 

$name = "newusername"
$user = Get-ADUser -Filter {
    sAMAccountname -eq $name
}
    if ($null -eq $user) {
        "User does not exist in AD"
    }
    else {
        "User found in AD"
    }