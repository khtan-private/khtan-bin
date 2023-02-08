<#
.SYNOPSIS
Show non-0 DLQs for an environment -env
.PARAMETER env
Name of the lower deployment environment qa|staging
.PARAMETER all
Flag to show all queues, not just non-0 ones
.EXAMPLE
   ShowDlq.ps1 -env qa
#>


param (
    [Parameter(Mandatory=$true)][string]$env,
    [switch]$all = $false
)
get-date
$queues = aws sqs list-queues --queue-name-prefix "zdiscovery-$env" | out-string
foreach ($queue in (convertfrom-json $queues).QueueUrls) {
    $messages = (aws sqs get-queue-attributes --queue-url $queue --attribute-names ApproximateNumberOfMessages | out-string | convertfrom-json).Attributes.ApproximateNumberOfMessages
    $shortQueue = $queue -replace ('^https:.*[0-9]+/', '')
    if ($all) {
        write-output "${shortQueue}: $messages"
    } else {
        if ($messages -gt 0) {
            write-output "${shortQueue}: $messages"
        }
    }
}
