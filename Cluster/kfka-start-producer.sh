topicName=$1
fileSrc=$2
${KAFKA_HOME}/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic $topicName<$fileSrc
