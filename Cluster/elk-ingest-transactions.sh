sleep 3
while read f1
do        
  curl -XPOST 'http://localhost:9200/banklogs-2017.11.13/transaction?pipeline=parse_transaction_csv' -H "Content-Type: application/json" -d "{ \"transaction\": \"$f1\" }"  
done < transaction_sample.csv
