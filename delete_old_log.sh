SOURCE=/home/ec2-user/logs
files=$(find $SOURCE -name "*.log" -mtime +20)
if [ -d $SOURCE ]
then  
    echo "directory exists"
else
    echo "directory dosent exists"
    exit 1
fi

echo "Files: $files"
while IFS= read -r line  #IFS,internal field seperatpor, empty it will ignore while space.-r is for not to ingore special charecters like /,*,$
do
    echo "deleting lines: $line"
    rm -rf $line
done <<< $files