#Make Custom service
echo "Starting custom service deployment tool"
export HDP_VERSION="2.2"
ssh root@server1 'rm -rf /var/lib/ambari-server/resources/stacks/HDP/${HDP_VERSION}/services/SAMPLESRV'
ssh root@server1 'ls -lt /var/lib/ambari-server/resources/stacks/HDP/${HDP_VERSION}/services/'
ssh root@server1 'mkdir -p /var/lib/ambari-server/resources/stacks/HDP/${HDP_VERSION}/services/SAMPLESRV'
ssh root@server1 'ls -lt /var/lib/ambari-server/resources/stacks/HDP/${HDP_VERSION}/services/'

scp metainfo.xml root@server1:/var/lib/ambari-server/resources/stacks/HDP/${HDP_VERSION}/services/SAMPLESRV/metainfo.xml
echo "******"
ssh root@server1 'mkdir -p /var/lib/ambari-server/resources/stacks/HDP/${HDP_VERSION}/services/SAMPLESRV/package/scripts'
echo "******"
scp *.py root@server1:/var/lib/ambari-server/resources/stacks/HDP/${HDP_VERSION}/services/SAMPLESRV/package/scripts
echo "******"
echo "Restarting Ambari - All should be installed now"
ssh root@server1 'ambari-server stop'
echo "******"
ssh root@server1 'ambari-server start'
echo "****** - All Done !!!!"
