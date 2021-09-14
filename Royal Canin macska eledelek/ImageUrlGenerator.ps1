cls

$path = Read-Host "Add meg a mappát"


$pictures = Get-ChildItem -Path $path | where name -NotLike *.docx | select FullName

foreach($_ in $pictures) {

$result = $_.FullName.Replace("C:\Users\attila.toth\Documents\Azure DevOps\Web development\", "https://github.com/totapp91/Royal-Canin/raw/main/")
$result = $result.Replace("\", "/")
$result = $result.Replace(" ", "%20")
$result += "|"

$ImageUrls += $result

}



$ImageUrls = $ImageUrls.Substring(0, $ImageUrls.Length-1)

$ImageUrls | Out-File -FilePath $path\ImageUrls.txt

"Ezt másold be:

"
$ImageUrls

Remove-Variable ImageUrls

"

"