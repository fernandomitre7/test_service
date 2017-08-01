#!/bin/bash
DIR=$(pwd)
echo $DIR
output_folder="service_dist"
mkdir -p /tmp/$output_folder
cp -a $DIR/ /tmp/$output_folder
tar -jcvf /tmp/$output_folder.tar.bz2 -C /tmp $output_folder
mv /tmp/$output_folder.tar.bz2 .
rm -Rf /tmp/$output_folder

#deploy: all
#	output_folder=empowerthings-$${version}; 
#    mkdir -p /tmp/$${output_folder}/bin && 
#    cp -a bin/{cumulis_fe,cumulis_ll,run_cumulisdl.sh,run.sh,start_cloud.sh,stop_cloud.sh,service_functions.sh,start_service.sh,stop_service.sh,cumulis_dl-$${version}.jar,functions.sh,jars,conf} /tmp/$${output_folder}/bin/ && 
#    mkdir -p /tmp/$${output_folder}/conf/ && 
#    cp -a conf/{cumulis.conf.dev,cumulis.conf.test,cumulis.conf.stage,cumulis.conf.prod,cumulis.conf.local,jwt_key.priv,jwt_key.pub,log4go.xml,cumulis_fe_log.xml,cumulis_ll_log.xml,root_ca,certificates} /tmp/$${output_folder}/conf/ && 
#    tar -jcvf /tmp/empowerthings-$${version}.tar.bz2 -C /tmp empowerthings-$${version} && 
#    mv /tmp/empowerthings-$${version}.tar.bz2 . && rm -Rf /tmp/empowerthings-$${version}