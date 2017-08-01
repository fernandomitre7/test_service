#!/bin/bash
echo $(pwd)
#cd ..
DIR=$(pwd)
echo $DIR
tar -pczf ../service.tar.gz $DIR --exclude $DIR"/node_modules" 
