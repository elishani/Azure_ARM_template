
#!/bin/bash
dpkg --configure -a
apt-get -y update

# install Apache2
apt-get -y install apache2
apt-get -y install mysql-server
apt-get -y install php libapache2-mod-php php-mysql
# write some HTML
echo \<center\>\<h1\>My Demo App\</h1\>\<br/\>\</center\> > /var/www/html/demo.html

# restart Apache
apachectl restart
##!/bin/bash
#apt update
#apt install -y apache2
#echo "<h1> HELLO </h1>" > /var/www/html/index.html
#systemctl restart apache2
