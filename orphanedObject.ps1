param($orphanedObject)
$objectGUID = ('*'+((Get-ADUser $orphanedObject).ObjectGUID)+'*')
get-adgroup -filter {samaccountname -like $objectGUID} -SearchBase "OU=NetIQRecycleBin,DC=dolby,DC=net"