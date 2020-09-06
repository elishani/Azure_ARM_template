#!/bin/bash
sleep 100
apt update
apt install -y apache2
cat > /var/www/html/index.html <<EOF
<h1> HELLO </h1>
EOF
#echo '<h1> HELLO </h1>' > /var/www/html/index.html
#apt update
#apt install -y apache2
#echo "<h1> HELLO </h1>" > /var/www/html/index.html
#sysytemctl restart apache2
