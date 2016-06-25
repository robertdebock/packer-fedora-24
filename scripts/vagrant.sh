#!/bin/bash
useradd --system --create-home vagrant
echo "vagrant" | passwd vagrant --stdin

echo 'vagrant             ALL=(ALL)   NOPASSWD: ALL' >> /etc/sudoers.d/vagrant
echo 'Defaults:vagrant    env_keep += SSH_AUTH_SOCK' >> /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant
