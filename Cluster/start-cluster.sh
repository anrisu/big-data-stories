echo "STARTING TOMCAT===================================================================================================================="
${CATALINA_HOME}/./bin/startup.sh
sleep 2
echo "STARTING ZOOKEEPER==========================================================================================================="
start-zkeeper.sh
sleep 2
echo "STARTING YARN==========================================================================================================="
${HADOOP_HOME}/./sbin/start-yarn.sh
sleep 2
echo "STARTING YARN TIMELINE-SERVER==========================================================================================================="
${HADOOP_HOME}/./bin/yarn --daemon start timelineserver
sleep 2
echo "STARTING HISTORY-SERVER==========================================================================================================="
${HADOOP_HOME}/./bin/mapred --daemon start historyserver
sleep 2
echo "STARTING HDFS==========================================================================================================="
${HADOOP_HOME}/./sbin/start-dfs.sh
sleep 2
echo "STARTING HIVE METASTORE - thrift==================================================================================================="
hive --service metastore > /dev/null 2>&1 &
sleep 2
netstat -an | grep 9083
echo "STARTING HIVESERVER2 - thrift======================================================================================================"
hive --service hiveserver2 > /dev/null 2>&1 &
sleep 2
netstat -an | grep 10000
echo "STARTING HBASE====================================================================================================================="
#${HBASE_HOME}/./bin/start-hbase.sh
#sleep 2
jps  | sort -g
