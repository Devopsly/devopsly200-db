buildNumber=${BUILD_NUMBER}

docker push localhost:5000/devopsly200-db-teststage
docker push localhost:5000/devopsly200-db-teststage-failed
docker push localhost:5000/devopsly200-db-stagingstage
docker push localhost:5000/devopsly200-db-stagingstage-failed
docker push localhost:5000/devopsly200-db-productionstage
docker push localhost:5000/devopsly200-db-productionstage-failed
