cls

$path = Read-Host "Add meg a mappát"


$docs = Get-ChildItem -Path $path | where name -Like *.docx | where name -NotLike *.txt | select FullName



foreach($_ in $docs) {

$result = $_.FullName.Replace("C:\Users\attila.toth\Documents\Azure DevOps\Web development\Royal-Canin", "https://github.com/totapp91/Royal-Canin/raw/main")
$result = $result.Replace("\", "/")
$result = $result.Replace(" ", "%20")
$result += "|"

$DocUrls += $result

}



$DocUrls = $DocUrls.Substring(0, $DocUrls.Length-1)


"Ezt másold be:

"
$DocUrls

Remove-Variable DocUrls

"

"