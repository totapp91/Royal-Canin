cls

$path = Read-Host "Add meg a mappát"


$pictures = Get-ChildItem -Path $path | where name -NotLike *.docx | where name -NotLike *.txt | select FullName

$pictures.Count

foreach($_ in $pictures) {

$result = $_.FullName.Replace("C:\Users\attila.toth\Documents\Azure DevOps\Web development\Royal-Canin", "https://github.com/totapp91/Royal-Canin/raw/main")
$result = $result.Replace("\", "/")
$result = $result.Replace(" ", "%20")
$result += "|"

$ImageUrls += $result

}



$ImageUrls = $ImageUrls.Substring(0, $ImageUrls.Length-1)


"Ezt másold be:

"
$ImageUrls

Remove-Variable ImageUrls

"

"