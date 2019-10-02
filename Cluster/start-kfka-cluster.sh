echo "Checking Zookeeper Status"
start-zkeeper.sh
echo "Starting Kafka"
nohup ${KAFKA_HOME}/bin/kafka-server-start.sh ${KAFKA_HOME}/config/server-1.properties > /dev/null 2>&1 &
sleep 2
nohup ${KAFKA_HOME}/bin/kafka-server-start.sh ${KAFKA_HOME}/config/server-2.properties > /dev/null 2>&1 &
sleep 2
nohup ${KAFKA_HOME}/bin/kafka-server-start.sh ${KAFKA_HOME}/config/server-3.properties > /dev/null 2>&1 &
sleep 2
jps | sort -g
echo "Listing Brokers"
${KAFKA_HOME}/bin/kafka-topics.sh --list --zookeeper localhost:2181
