function Set-EnvironmentVariable
{
  param
  (
    [Parameter(Mandatory=$true)]
    [String]
    $Name,
    
    [Parameter(Mandatory=$true)]
    [String]
    $Value,
    
    [Parameter(Mandatory=$true)]
    [EnvironmentVariableTarget]
    $Target
  )
  [System.Environment]::SetEnvironmentVariable($Name, $Value, $Target)
}

Export-ModuleMember -Function Set-EnvironmentVariable