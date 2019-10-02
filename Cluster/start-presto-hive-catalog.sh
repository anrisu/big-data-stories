echo "Starting Hive on Presto"
presto --server localhost:8901 --catalog=hive --schema=default

