# This repo is configured for openvpn and docker-swarm provison

#Docker swarm
You can provision imutable docker node on every server, where you have user/password
or user/key provided creds
``
ansible-playbook -i HOST_IP/HOST_DOMAIN, docker-swarm-provision.yml --tags provision
``
<h3>``
Please note that quote is mandatory or provide inventory file!
``