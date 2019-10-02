${DRUID_HOME}/./bin/coordinator.sh stop
${DRUID_HOME}/./bin/overlord.sh stop
${DRUID_HOME}/./bin/historical.sh stop
${DRUID_HOME}/./bin/middleManager.sh stop
${DRUID_HOME}/./bin/broker.sh stop
sleep 3
jps | sort -g
