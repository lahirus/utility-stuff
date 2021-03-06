#!/bin/bash

#change path to the Stratos checkout directory
path="/Users/lahiru/work/apache/stratos/code/master/work/stratos"
echo $path

cp $path/products/stratos/modules/distribution/target/apache-stratos-4.1.0-SNAPSHOT.zip apache-stratos-4.1.0-SNAPSHOT.zip 
rm -rf apache-stratos-4.1.0-SNAPSHOT
unzip apache-stratos-4.1.0-SNAPSHOT.zip 

# copy any artifacts you need to update
cp $path/components/org.apache.stratos.autoscaler/target/org.apache.stratos.autoscaler-4.1.0-SNAPSHOT.jar apache-stratos-4.1.0-SNAPSHOT/repository/components/plugins/org.apache.stratos.autoscaler_4.1.0.SNAPSHOT.jar
cp $path/products/stratos/modules/distribution/src/main/conf/drools/scaling.drl apache-stratos-4.1.0-SNAPSHOT/repository/conf/drools/scaling.drl

# put the requied conf files in a directory called "co"
cp co/* apache-stratos-4.1.0-SNAPSHOT/repository/conf/

