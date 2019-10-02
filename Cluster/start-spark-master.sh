echo "Current Spark Version ::"  ${SPARK_HOME}
${SPARK_HOME}/./sbin/start-master.sh  --host 127.0.0.1
sleep 3
${SPARK_HOME}/./sbin/start-slave.sh spark://127.0.0.1:7077 --host 127.0.0.1
sleep 3
$SPARK_HOME/sbin/start-history-server.sh
sleep 3
#echo "STARTING LIVY-SERVER===================================================================================================================="
livy-server start
sleep 3
livy-server status
