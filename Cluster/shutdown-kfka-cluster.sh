#!/bin/sh

PIDS=$(ps ax | grep -i 'ConsoleConsumer' | grep java | grep -v grep |awk '{print $1}')
echo $PIDS
if [ -z "$PIDS" ]; then
  echo "No Kafka Consumers to stop"
  #exit 1
else 
  kill -s TERM $PIDS
fi

sleep 3

PIDS=$(ps ax | grep -i 'ConsoleProducer' | grep java | grep -v grep |awk '{print $1}')
echo $PIDS
if [ -z "$PIDS" ]; then
  echo "No Kafka Producers to stop"
  #exit 1
else 
  kill -s TERM $PIDS
fi

sleep 3

PIDS=$(ps ax | grep -i 'kafka\.Kafka' | grep java | grep -v grep | awk '{print $1}')
echo $PIDS
if [ -z "$PIDS" ]; then
  echo "No Kafka Servers to stop"
  exit 1
else 
  kill -s TERM $PIDS
  #${KAFKA_HOME}/bin/kafka-server-stop.sh 
  echo "Kafka Stopped - OK"
fi

jps | sort -g
