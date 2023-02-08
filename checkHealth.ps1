# 'auth-prov', 'email-task'
$endpoints = 'action-request', 'auth', 'company', 'emailtemplate', 'legal-holds', 'lhp-matter', 'lhp-user', 'matter', 'reminder', 'task', 'tenant', 'user-roles', 'user', 'user-settings', 'workflow'
foreach ($endpoint in $endpoints)
{
    write-host -nonewline $endpoint ' '
    write-host (Invoke-RestMethod https://zdiscovery-staging.io/$endpoint/health).errors.description
}
