#!/bin/bash

# postting update from termux to spck editor

ls ~/spck-repo > ./bin/note

while read line; do
if [ -e ~/storage/shared/Android/data/io.spck/files/$line ]
then
  echo "found"
else
  cp -r ~/spck-repo/$line ~/storage/shared/Android/data/io.spck/files
fi 2> error
done < ./bin/note

# empty note 
echo "This is just a note file" > ./bin/note