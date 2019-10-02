#!/bin/bash
if jps | grep --quiet "QuorumPeerMain";
then
    echo "Shutdown Zookeepeer"
    ${ZOOKEEPER_HOME}/./bin/zkServer.sh stop
fi
