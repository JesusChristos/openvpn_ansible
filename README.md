#Ansible plan:
    Create role for Digitalocean
        1. Connect to Digitalocen
        2. Create droplet
        3. Create users
        4. Create openvpn server
        5. Write configs
        6. Connetc to vpn from local
        7. Automation of sending ssh-key by email


1) Навчитися видаляти дроплет на DigitalOcean!!!

# Виклик ансібл плейбука

ansible-playbook -i hosts playbook (якщо треба викликати для одного хоста тоді "-i ip," ) 

# Киклик ad-hoc команди

ansible -m ping -i hosts all (якщо для конкретного сервера "192.168.1.1,")

pip3 install -r requirements.txt