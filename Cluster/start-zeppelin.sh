echo "Current Spark Version ::"  ${SPARK_HOME}
echo "Current Zeppelin Version ::"  ${ZEPPELIN_HOME}
${ZEPPELIN_HOME}/./bin/zeppelin-daemon.sh start
sleep 3
${ZEPPELIN_HOME}/./bin/zeppelin-daemon.sh status
