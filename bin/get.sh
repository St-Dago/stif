#!/bin/bash

# getting update from spck editor to termux

ls ~/storage/shared/Android/data/io.spck/files > ./bin/note



while read repo; do

# check if a repo spck exist on termux if not move them to termux 
if [ -e ~/spck_repo/"$repo" ]
then
  # node ~/cpanel/repository/stif/index.js
  echo $repo >> ./bin/note2
  
else
  cp -rf ~/storage/shared/Android/data/io.spck/files/"$repo" ~/spck_repo
fi 2> ./bin/error

done < ./bin/note

# empty note 
echo "This is just a note file" > ./bin/note


bash ./bin/init.sh ~/spck_repo ~/storage/shared/Android/data/io.spck/files



