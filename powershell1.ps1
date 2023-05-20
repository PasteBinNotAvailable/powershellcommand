$hookUrl = "your hook url goes here"
$content = @"
You can enter your message content here.

With a here-string, new lines are included as well!

Enjoy.
"@
payload = [PSCustomObject]@{

    content = $content

}
Invoke-RestMethod -Uri $hookUrl -Method Post -Body ($payload | ConvertTo-Json)
