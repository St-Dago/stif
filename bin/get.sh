#!/bin/bash

# getting update from spck editor to termux

ls ~/storage/shared/Android/data/io.spck/files > ./bin/note

while read line; do
if [ -e ~/spck-repo/$line ]
then
  echo "found"
else
  cp -r ~/storage/shared/Android/data/io.spck/files/$line ~/spck-repo
fi 2> error
done < ./bin/note

# empty note 
echo "This is just a note file" > ./bin/note