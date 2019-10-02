${ES_HOME}/./bin/elasticsearch
sleep 3
PIDS=$(ps ax | grep -i 'Elasticsearch' | grep java | grep -v grep |awk '{print $1}')
echo 'Elastic Running':${PIDS}
sleep 3
netstat -an | grep :9200
