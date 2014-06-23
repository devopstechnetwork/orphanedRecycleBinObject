orphanedRecycleBinObject
==============

A script that locates orphaned NetIQ DRA group objects in the NetIQ recycle bin. 

USAGE -- orphanedObject.ps1 [samaccountname]

Where [samaccountname] is the samaccountname of the object with the orphaned group object. 

REQUIREMENTS: Powershell 2.0 or above (including in Windows 7 and Windows 8/8.1). Active Directory Users and Computers, or Remote Server Administration Tools

RSAT for Windows 8.1: http://www.microsoft.com/en-us/download/details.aspx?id=39296

RSAT for Windows 8: http://www.microsoft.com/en-us/download/details.aspx?id=28972

RSAT for Windows 7: http://www.microsoft.com/en-us/download/details.aspx?id=7887

==============

Background: When NetIQ Directory & Resource Administrator (DRA) sends an object to the Recycle Bin, it creates
a hidden group object that contains all of the group memberships the now-recycled object once contained.

If the deleted object is restored via native active directory administrative tools, this group oject becomes orphaned;
and more alarmingly, DRA cannot delete an object with an orphaned group object in the recycle bin. 

This script will check to see if there is an orphaned group object for a given user object, it takes a single argument:
the samaccountname of the user object you are looking for. If it spits out a group object, then you know you have an orphan. 
