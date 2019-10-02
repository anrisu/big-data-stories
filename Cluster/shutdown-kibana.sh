PIDS=$(cat ${KIBANA_HOME}/kibana.pid)
echo ${PIDS}

if [ -z "$PIDS" ]; then
  echo "Kibana Not Running"
else 
  kill -s TERM $PIDS
fi
