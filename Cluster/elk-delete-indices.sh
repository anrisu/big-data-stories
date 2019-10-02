curl -XDELETE http://ANRISU-LNX-03:9200/$1
curl -XGET 'localhost:9200/_cat/indices?v&pretty' | sort -k 3,3 
