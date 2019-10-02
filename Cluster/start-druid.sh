${DRUID_HOME}/./bin/coordinator.sh start
${DRUID_HOME}/./bin/coordinator.sh status
sleep 3
${DRUID_HOME}/./bin/overlord.sh start
${DRUID_HOME}/./bin/overlord.sh status
sleep 3
${DRUID_HOME}/./bin/historical.sh start
${DRUID_HOME}/./bin/historical.sh status
sleep 3
${DRUID_HOME}/./bin/middleManager.sh start
${DRUID_HOME}/./bin/middleManager.sh status
sleep 3
${DRUID_HOME}/./bin/broker.sh start
${DRUID_HOME}/./bin/broker.sh status
sleep 3

jps | sort -g

#cd $DRUID_HOME && java `cat conf/druid/coordinator/jvm.config | xargs` -cp "conf/druid/_common:conf/druid/_common/hadoop-xml:conf/druid/coordinator:lib/*" io.druid.cli.Main server coordinator
#cd $DRUID_HOME && java `cat conf/druid/overlord/jvm.config | xargs` -cp "conf/druid/_common:conf/druid/_common/hadoop-xml:conf/druid/overlord:lib/*" io.druid.cli.Main server overlord
#cd $DRUID_HOME && java `cat conf/druid/historical/jvm.config | xargs` -cp "conf/druid/_common:conf/druid/_common/hadoop-xml:conf/druid/historical:lib/*" io.druid.cli.Main server historical
#cd $DRUID_HOME && java `cat conf/druid/middleManager/jvm.config | xargs` -cp "conf/druid/_common:conf/druid/_common/hadoop-xml:conf/druid/middleManager:lib/*" io.druid.cli.Main server middleManager
#cd $DRUID_HOME && java `cat conf/druid/broker/jvm.config | xargs` -cp "conf/druid/_common:conf/druid/_common/hadoop-xml:conf/druid/broker:lib/*" io.druid.cli.Main server broker

#BATCH INGESTION
#curl -X 'POST' -H 'Content-Type:application/json' -d @examples/wikipedia-index.json http://localhost:8090/druid/indexer/v1/task

#KAFKA INGESTION
#curl -XPOST -H'Content-Type: application/json' -d @examples/wikipedia-kafka-supervisor.json http://localhost:8090/druid/indexer/v1/supervisor
#export KAFKA_OPTS="-Dfile.encoding=UTF-8"
#kafka-producer-start wikipedia ${DRUID_HOME}/quickstart/wikiticker-2015-09-12-sampled.json
