echo "Current Scala Version ::"  ${SCALA_HOME}
echo "Current Spark Version ::"  ${SPARK_HOME}

start-spark-master.sh
sleep 3
spark-shell --master spark://localhost:7077
