Import-Module .\common\set-wallpaper.psm1
Import-Module .\common\set-environmentvariable.psm1
Import-Module .\common\resolve-fullpath.psm1
Import-Module .\common\set-vscodewallpaper.psm1


$daynight =  [Environment]::GetEnvironmentVariable('daynight', 'User')

$pic0 = Resolve-FullPath .\test\metroslide-0.png
$pic1 = Resolve-FullPath .\test\metroslide-1.png
$pic2 = Resolve-FullPath .\test\metroslide-2.png
$pic3 = Resolve-FullPath .\test\metroslide-3.png
$pic4 = Resolve-FullPath .\test\metroslide-4.png
$pic5 = Resolve-FullPath .\test\metroslide-5.png
$pic6 = Resolve-FullPath .\test\metroslide-6.png




write-host  $daynight

if ($daynight -eq "night" ) {

    set-wallpaper $pic5
    # Start-Sleep -Milliseconds 1
    set-wallpaper $pic4
    # Start-Sleep -Milliseconds 1
    set-wallpaper $pic3
    # Start-Sleep -Milliseconds 1
    set-wallpaper $pic2
    # Start-Sleep -Milliseconds 1
    set-wallpaper $pic1
    # Start-Sleep -Milliseconds 1
    set-wallpaper $pic0
    # Start-Sleep -Milliseconds 1

    Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 1
    Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 1

    Set-EnvironmentVariable daynight day User

    write-host  $daynight
    Set-VscodeWallpaper "Github Light Theme - Gray"
} 
elseif ($daynight -eq "day" ) {

    set-wallpaper $pic1
    # Start-Sleep -Milliseconds 1
    set-wallpaper $pic2
    # Start-Sleep -Milliseconds 1
    set-wallpaper $pic3
    # Start-Sleep -Milliseconds 1
    set-wallpaper $pic4
    # Start-Sleep -Milliseconds 1
    set-wallpaper $pic5
    # Start-Sleep -Milliseconds 1
    set-wallpaper $pic6
    # Start-Sleep -Milliseconds 1

    Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0
    Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 0

    Set-EnvironmentVariable daynight night User
    write-host  $daynight
    Set-VscodeWallpaper "Ayu Mirage"
}