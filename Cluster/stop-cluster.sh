jps | sort -g | grep RunJar | awk '{print $1}' | xargs kill -s TERM
${HADOOP_HOME}/./bin/mapred --daemon stop historyserver
${HADOOP_HOME}/./bin/yarn --daemon stop timelineserver
${HADOOP_HOME}/sbin/./stop-dfs.sh
${HADOOP_HOME}/sbin/./stop-yarn.sh
${ZOOKEEPER_HOME}/./bin/zkServer.sh stop
${CATALINA_HOME}/./bin/shutdown.sh

