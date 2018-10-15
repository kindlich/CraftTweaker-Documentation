#!/bin/bash

echo "start"
echo "Building english site"
mkdocs build --clean --site-dir ./build/en_US


cd ./translations

TRANS=./*


for f in $TRANS
do
  echo "Processing folder $f"
  #will refer to start folder/build/languageCode
  SITEDIR="../../build/${f#"./"}"
  mkdocs build --clean --site-dir $SITEDIR
  cd ..
  
done