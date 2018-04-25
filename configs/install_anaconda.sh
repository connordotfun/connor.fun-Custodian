wget -O /home/ec2-user/Anaconda3-5.1.0-Linux-x86_64.sh https://repo.anaconda.com/archive/Anaconda3-5.1.0-Linux-x86_64.sh

bash /home/ec2-user/Anaconda3-5.1.0-Linux-x86_64.sh -bp

echo 'export PATH="/home/ec2-user/anaconda3/bin:$PATH"' >> /home/ec2-user/.bashrc