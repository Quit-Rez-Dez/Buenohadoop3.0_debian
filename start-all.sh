#!/bin/bash

service ssh start
# START HADOOP
##############

 if [ ! -d /tmp/hadoop-root/dfs/name ]
then 
	echo "El directorio no existe"
	$HADOOP_HOME/bin/hdfs namenode -format
else 
     if [ "$(ls /tmp/hadoop-root/dfs/name)" ]
     then  
         echo "el directorio tiene algo"
	 echo "otro comando"
     else 
         echo "el directorio está vacío"
     fi
fi


$HADOOP_HOME/sbin/start-dfs.sh
$HADOOP_HOME/sbin/start-yarn.sh
$HADOOP_HOME/sbin/mr-jobhistory-daemon.sh start historyserver

# START HUE
###########

tail -f /dev/null
