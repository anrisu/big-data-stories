$SPARK_HOME/./sbin/stop-all.sh
$SPARK_HOME/./sbin/stop-history-server.sh
livy-server stop

PIDS=$(ps ax | grep -i 'SparkSubmit' | grep java | grep -v grep | awk '{print $1}')

if [ -z "$PIDS" ]; then
  echo "There are no Spark Processes"
  exit 1
else 
  echo $PIDS  
  kill -s SIGTERM $PIDS
  sleep 3
  echo "Spark Stopped - OK"
fi

jps | sort -g
