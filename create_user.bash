#!/bin/bash
USERNAME=${username}
SSH_KEY=${ssh_value}

#sudo useradd -m -s /bin/bash $USERNAME

# Create SSH directory for the user
#sudo mkdir /home/$USERNAME/.ssh

#sudo chmod 700 /home/$USERNAME/.ssh
#sudo chown $USERNAME:$USERNAME /home/$USERNAME/.ssh

# Add the provided SSH key
#sudo echo $SSH_KEY | sudo tee /home/$USERNAME/.ssh/authorized_keys
cd /home/$USERNAME/.ssh
sudo echo $SSH_KEY > authorized_keys8

# Set correct permissions for authorized_keys
sudo chmod 600 /home/$USERNAME/.ssh/authorized_keys
sudo chown $USERNAME:$USERNAME /home/$USERNAME/.ssh/authorized_keys

# Restart SSH service to apply changes
#sudo systemctl restart sshlogout
