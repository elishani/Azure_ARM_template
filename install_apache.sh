#!/bin/bash
#!/bin/bash
dpkg --configure -a
apt-get -y update

# install Apache2
apt-get -y install apache2
#apt update
#apt install -y apache2
#echo "<h1> HELLO </h1>" > /var/www/html/index.html
#systemctl restart apache2
