buildNumber=${BUILD_NUMBER}

docker push localhost:5000/devopsly200-db-teststage:$buildNumber
docker push localhost:5000/devopsly200-db-teststage-failed:$buildNumber
docker push localhost:5000/devopsly200-db-stagingstage:$buildNumber
docker push localhost:5000/devopsly200-db-stagingstage-failed:$buildNumber
docker push localhost:5000/devopsly200-db-productionstage:$buildNumber
docker push localhost:5000/devopsly200-db-productionstage-failed:$buildNumber
