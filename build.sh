buildNumber=${BUILD_NUMBER}

docker rmi -f localhost:5000/devopsly200-db-teststage:$buildNumber
docker build -t localhost:5000/devopsly200-db-teststage:$buildNumber -f DockerfileTest .

docker rmi -f localhost:5000/devopsly200-db-teststage-failed:$buildNumber
docker build -t localhost:5000/devopsly200-db-teststage-failed:$buildNumber -f DockerfileTest .

docker rmi -f localhost:5000/devopsly200-db-stagingstage:$buildNumber
docker build -t localhost:5000/devopsly200-db-stagingstage:$buildNumber -f DockerfileStaging .

docker rmi -f localhost:5000/devopsly200-db-stagingstage-failed:$buildNumber
docker build -t localhost:5000/devopsly200-db-stagingstage-failed:$buildNumber -f DockerfileStaging .

docker rmi -f localhost:5000/devopsly200-db-productionstage:$buildNumber
docker build -t localhost:5000/devopsly200-db-productionstage:$buildNumber -f DockerfileProduction .

docker rmi -f localhost:5000/devopsly200-db-productionstage-failed:$buildNumber
docker build -t localhost:5000/devopsly200-db-productionstage-failed:$buildNumber -f DockerfileProduction .
