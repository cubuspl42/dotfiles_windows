Write-Output "<?xml version=`"1.0`" encoding=`"utf-8`"?>"
Write-Output "<packages>"
choco list --local-only --limit-output --yes | % { "   <package id=`"$($_.SubString(0, $_.IndexOf("|")))`" version=`"$($_.SubString($_.IndexOf("|") + 1))`" />" }
Write-Output "</packages>"