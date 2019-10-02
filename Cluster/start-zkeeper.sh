#!/bin/bash
if jps | grep --quiet "QuorumPeerMain";
then
    echo "===========Zookeepeer Running============"
else
    echo ">>>>>>>>>>>Starting Zookeepeer>>>>>>>>>>>"
    ${ZOOKEEPER_HOME}/./bin/zkServer.sh start
fi
sleep 3
jps
