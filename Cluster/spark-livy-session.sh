

curl -X POST --data '{
"file": "/projects/sparkApps/sparkapps_2.11-0.1.jar",
"className": "com.anrisu.sparkapps.sqlRunner",
"args":["select * from stocks.t_daily_trades_raw"]
}' -H "Content-Type: application/json" localhost:8998/batches


spark-streaming-kafka-0-10_2.11-2.4.4.jar
