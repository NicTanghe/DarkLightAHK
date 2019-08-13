function Set-VscodeWallpaper{
    [cmdletbinding()]
    param(
        [Parameter(
            Mandatory=$true,
            Position=0,
            ValueFromPipeline=$true)]
        [string] $theme
    )

    $pathToJson = "C:\Users\$env:USERNAME\AppData\Roaming\Code\User\settings.json"
    $a = Get-Content $pathToJson | ConvertFrom-Json
    $a.'workbench.colorTheme' = $theme
    $a | ConvertTo-Json | set-content $pathToJson
}

Export-ModuleMember -Function Set-VscodeWallpaper