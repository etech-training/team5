# To check if read, write and execution permission are assigned to a particular file.
echo -n " pleas enter the file to check for its permision: "
read filename
set=$(sudo find / -name type -f $filename) 

if [ -f $filename ]&&[ -r $filename ]&&[ -w $filename ]&&[ -x $filename ]; then
echo " The file exist and has all the permission "
ls -l locate | grep $filename
else
echo " This file lacks some permission and permision will be added "
echo " See permission for this file "
ls -l locate | grep $filename
sleep 5
echo " changing permission "
sleep 3
chmod ugo=wrx $filename
echo " see details below "
ls -l locate | grep $filename
sleep 5
fi

