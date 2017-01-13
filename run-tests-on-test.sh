
siteIp=$(curl http://myip.dnsomatic.com)

if ps -edaf | grep mongo > /dev/null; then
   echo "SUCCESS"
   
else
   echo "FAILURE"
fi

