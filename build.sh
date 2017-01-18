buildNumber=${BUILD_NUMBER}

docker rmi -f localhost:5000/devopsly200-db-teststage
docker build -t localhost:5000/devopsly200-db-teststage -f DockerfileTest .

docker rmi -f localhost:5000/devopsly200-db-stagingstage
docker build -t localhost:5000/devopsly200-db-stagingstage -f DockerfileStaging .

docker rmi -f localhost:5000/devopsly200-db-productionstage
docker build -t localhost:5000/devopsly200-db-productionstage -f DockerfileProduction .
