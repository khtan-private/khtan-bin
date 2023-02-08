$queueEnv = "staging"
$queues = aws sqs list-queues --queue-name-prefix "zdiscovery-$queueEnv" | out-string
foreach ($queue in (convertfrom-json $queues).QueueUrls) {
    $messages = (aws sqs get-queue-attributes --queue-url $queue --attribute-names ApproximateNumberOfMessages | out-string | convertfrom-json).Attributes.ApproximateNumberOfMessages
    $shortQueue = $queue -replace ('^https:.*[0-9]+/', '')
    Write-Host "${shortQueue}: $messages"
    if ($messages-gt 0) { aws sqs purge-queue --queue-url $queue; write-output "*** Purged"}
}
