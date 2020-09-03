#!/bin/bash -xv
web_host=${aws_instance.rep.private_ip}
apt update
apt install -y nginx
cat > /etc/nginx/nginx.conf <<EOF
events { }
http {
	upstream beckend {
		server ${web_host}:80;
		}
	server {
		listen 443 ssl;
        ssl_certificate /etc/nginx/ssl/eli.crt;
        ssl_certificate_key /etc/nginx/ssl/eli.key;
		location / {
			proxy_pass http://beckend/;
		}
	}
}
EOF
systemctl restart nginx

apt install -y openssl

cd /etc/nginx
mkdir ssl
chmod 700 ssl
yes "" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/eli.key -out  /etc/nginx/ssl/eli.crt
nginx -t 
systemctl reload nginx
