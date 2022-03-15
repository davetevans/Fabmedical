host="fabmedical-562480.mongo.cosmos.azure.com"
username="fabmedical-562480.mongo.cosmos.azure.com"
password="yemztuavx27HKkeJqSUstVmnteyKtNsTAPk1jDmM1NtwccSy6L85TvzCM1yI50T4FVOJ5T68Dy31PXQGTYskDw=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
