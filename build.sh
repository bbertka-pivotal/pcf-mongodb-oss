cd docker-mongodb
docker build -t bbertka/mongodb:latest .
cd ..
mkdir docker-cache
docker save bbertka/mongodb | gzip -c > docker-cache/bbertka-mongodb.tgz
tile build --docker-cache ./docker-cache
pcf import product/*.pivotal
