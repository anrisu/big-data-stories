PIDS=$(ps ax | grep -i 'Elasticsearch' | grep java | grep -v grep |awk '{print $1}')

if [ -z "$PIDS" ]; then
  echo "No Running Elastic Found"
  #exit 1
else 
  kill -s TERM $PIDS
fi
