${KAFKA_HOME}/./bin/kafka-topics.sh --zookeeper localhost:2181 --create --topic $1 --partitions 1 --replication-factor 1
kfka-list-topics.sh
