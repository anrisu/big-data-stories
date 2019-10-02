PIDS=$(ps ax | grep -i 'Logstash' | grep java | grep -v grep |awk '{print $1}')

if [ -z "$PIDS" ]; then
  echo "No Running Elastic Found"
  #exit 1
else 
  kill -TERM $PIDS
fi
