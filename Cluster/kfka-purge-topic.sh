${KAFKA_HOME}/./bin/kafka-configs.sh --zookeeper localhost:2181 --entity-type topics --alter --entity-name $1  --add-config retention.ms=1000
sleep 60
${KAFKA_HOME}/./bin/kafka-configs.sh --zookeeper localhost:2181 --entity-type topics --alter --entity-name $1  --add-config retention.ms=216000

