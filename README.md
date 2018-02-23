# Provision Clout Stack Server

> Ansible playbooks to set up clout stack's servers

## Server Types

- build server: converts repositories in containers
- docker server: runs and exposes port in container to the world

## ~/.ssh/config

```bash
Host server1.cloud.clout.tech
    HostName 88.99.32.8
    Port 22
    User username
    IdentityFile ~/.ssh/your_key

Host build1.cloud.clout.tech
    HostName 195.201.34.255
    Port 22
    User username
    IdentityFile ~/.ssh/your_key
```

## Ansible Deployment

### Pre-requisites

- Ensure you have moved the folling files over to the playbook. This should be provided by the engineering team. If you want to generate these files, you can run ```./firsttime.sh```

#### Files:

- private/build.server.rsa
- private/build.server.pub

### Deploying

This can be done by navigating to the playbook folder and running the commands.

```bash
cd playbook
ansible-playbook -i production.ini [build-server.yml|docker-server.yml]
```

### Notes

Adding SSH Key files

```bash
cat ~/.ssh/id_rsa.pub | ssh <server>.cloud.clout.tech "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
```
