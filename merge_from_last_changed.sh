#http://www.workhabit.com/labs/subversion-merge-easy-way-copying-changes-trunk-prod-tag
DRYRUN="" 
if [ "x$1" == "--dry-run" ]; then 
DRYRUN="--dry-run" 
fi 
PRODREV=$(svn info tags/prod | grep "^Last Changed Rev:" | awk '{print $4}') 
svn $DRYRUN merge -r $PROD_REV:HEAD trunk tags/prod 
