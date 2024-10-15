#!/bin/bash
USERNAME=${username}
SSH_KEY=${ssh_value}

#clearSSH_KEY2="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDXPB/2C3mx/RdXuAXoruUkuvsgGTqfOTTSl0q38/8HzfXLWTCCAaPf6qChkxGg286LyGpZawgZuRqQNKRnw/EsKBMVza5o0M+3VJ9kcn/v7nkhH8UgoThlQUFwfCdCcITyIEQU89ufpcQCNx+8Bmsy2Za3JYbQgnaNrU50VcwdgAlGF9tcUEHWtEbO9Ap3g9wjq4aY0dc+5fBJx3TwOUHRTcV5hTuA5iu8yIsRS4w5BO9tTOabjHlTQWtcgtcZQWAbrrcxw5L5I3Ydaa1uMquwWmga4MViCXyKX6w+tdaMb3safRXQxS5gVcDv1XAjUZKmZvkaSgBr+d4vfDPcwzl4WiHDLLFaph5a9amnebSauqycIEXOfj7jHRwxNdn7707WmySPClL2YTuhbpk7oNhF9pUjbDRiCGRAsO8BpGWBNCYXYIQKaiIMnieBKeBxMyP4QTlwq6MMV0LQAdBxonb7RfmMtzVa4OrtRcJWgYyZ2gy3fil/vLBEMhItM0azD8u2Xo3o+WxEA8oA2HZBo/qpJZYchPDmtOmffxaCxio+wrSwEbx3+KfbsVVirhor/s5sxYyDnaYvCiviiudrNN+ofpF1CSF6DWOg+WHA/8jxozcO1oYHjlMVhptF+YaaxTy2nM4adKO2qhOyNDFxLapvIbQ1RAN7oZH+kkqLDyfFhQ=="

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
