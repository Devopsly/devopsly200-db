ls
startingPort=8000
buildNumber=${BUILD_NUMBER}
port=$((startingPort + buildNumber))
echo "var port= {};port.number = $port;module.exports = port;" > port.js

docker rmi -f localhost:5000/devopsly200-db:working
docker build -t localhost:5000/devopsly200-db:working .
