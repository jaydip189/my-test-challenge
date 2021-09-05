#print all the ec2-metadata using urllib2
import urllib2
import json
instance = json.loads(urllib2.urlopen('http://169.254.169.254/latest/dynamic/instance-identity/document').read())
print(instance)

# print perticular attribute using ec2_metadata
from ec2_metadata import ec2_metadata
print(ec2_metadata.instance_id)
print(ec2_metadata.network_interfaces)
