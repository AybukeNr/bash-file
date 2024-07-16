#!/bin/bash
#creating a bash script file with it's shebang
#path to the bash interpreter,we used -which bash- command to find out
path=$(which bash)
shebang="#!$path"

read -p "input file name:" fname

#if file already exist you need input new file name
while [ -f "$fname.sh" ]; do
  echo "this file exist,you so funny :D"
  ls
  read -p "input another name:" fname
done

#creating a bash script file with given name
touch $fname.sh

#shebang will be written on the first line of file
echo "$shebang" >> $fname.sh

echo "$fname.sh created"
ls

