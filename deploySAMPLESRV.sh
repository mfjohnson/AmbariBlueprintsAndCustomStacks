ansible ambari -m file -a "path=/var/lib/ambari-server/resources/stack/HDP/2.2/services/SAMPLESRV recurse=yes state=directory"
ansible ambari -m file -a "path=/var/lib/ambari-server/resources/stack/HDP/2.2/services/SAMPLESRV/configuration recurse=yes state=directory"
ansible ambari -m file -a "path=/var/lib/ambari-server/resources/stack/HDP/2.2/services/SAMPLESRV/scripts recurse=yes state=directory"
ansible ambari -m copy -a "src=metainfo.xml dest=/var/lib/ambari-server/resources/stack/HDP/2.2/services/SAMPLESRV"
ansible ambari -m copy -a "src=master.py dest=/var/lib/ambari-server/resources/stack/HDP/2.2/services/SAMPLESRV/scripts"
ansible ambari -m copy -a "src=sample_client.py   dest=/var/lib/ambari-server/resources/stack/HDP/2.2/services/SAMPLESRV/scripts"
ansible ambari -m copy -a "src=slave.py dest=/var/lib/ambari-server/resources/stack/HDP/2.2/services/SAMPLESRV/scripts"
ansible ambari -m copy -a "src=samplesrv-config.xml dest=/var/lib/ambari-server/resources/stack/HDP/2.2/services/SAMPLESRV/configuration"

