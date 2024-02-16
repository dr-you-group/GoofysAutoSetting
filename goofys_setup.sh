sudo apt-get update;
apt-get install -y fuse libfuse-dev;
sudo apt-get install -y golang;
cd /usr/local/src;
wget https://github.com/kahing/goofys/releases/download/v0.24.0/goofys
sudo chmod +x goofys
sudo mv goofys /usr/local/bin/
echo goofys --version
mkdir $1
sudo goofys dryou-workspace $1
vim /etc/fstab
echo "goofys#s3://dryou-workspace $1 fuse _netdev,allow_other,--uid=1000,--gid=1000 0 0\n" >> /etc/fstab