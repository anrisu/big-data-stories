#${HBASE_HOME}/./bin/stop-hbase.sh
${HADOOP_HOME}/./sbin/stop-dfs.sh
${HADOOP_HOME}/./bin/yarn --daemon stop timelineserver
${HADOOP_HOME}/./sbin/stop-yarn.sh
${HADOOP_HOME}/./bin/mapred --daemon stop historyserver
shutdown-zkeeper.sh
${CATALINA_HOME}/./bin/shutdown.sh 
jps | sort -g | grep RunJar | awk '{print $1}' | xargs kill -s TERM
sleep 3
jps
