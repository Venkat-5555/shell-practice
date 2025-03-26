SOURCE=/home/ec2-user/logs

if [ -d $SOURCE ]
then  
    echo "directory exists"
else
    echo "directory dosent exists"
    exit 1
fi
files=$(find $SOURCE -name "*.log" -mtime +20)
echo "Files: $files"
while IFS= read -r file  #IFS,internal field seperatpor, empty it will ignore while space.-r is for not to ingore special charecters like /,*,$, line is reserved key word
do
    echo "deleting file: $file"
    rm -rf $file
done <<< $files