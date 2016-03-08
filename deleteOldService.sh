# delete old SAMPLESRV
curl -u admin:admin -H "X-Requested-by:ambari" -i -k -X PUT -d '{"ServiceInfo": {"state": "INSTALLED"}}' http://server1.hdp:8080/api/v1/clusters/HDP/services/SAMPLESRV
curl -u admin:admin -H "X-Requested-by:ambari" -i -k -X PUT -d '{"ServiceInfo": {"state": "INSTALLED"}}' http://server1.hdp:8080/api/v1/clusters/HDP/services/SAMPLESRV_MASTER 
curl -u admin:admin -H "X-Requested-by:ambari" -i -k -X DELETE http://server1.hdp:8080/api/v1/clusters/HDP/services/SAMPLESRV