echo "Create user badguy:badguy"
useradd -p $(openssl passwd -crypt badguy) badguy
echo "install sshd"
apt install ssh nano sudo -y
echo "replace catalina.sh"
mv ./spring4shell-scripts-main/catalina.sh /usr/local/tomcat/bin/catalina.sh -f
echo "force container restart"
pkill java