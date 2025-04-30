# TLS Termination using cloudflare
mkdir /etc/cf-certs/

cat >/etc/cf-certs/origin.pem<<EOF
#paste your origin certificate here
EOF

cat >/etc/cf-certs/privkey.pem<<EOF
#paste your private key certificate here
EOF

chmod 400 /etc/cf-certs/origin.pem
chmod 400 /etc/cf-certs/privkey.pem

# Nginx reverse proxy configuration
cp vw.conf /etc/nginx/sites-available
ln -s /etc/nginx/sites-available/vw.conf /etc/nginx/sites-enabled

# Test your conf
nginx -t

# Restart nginx
nginx -s reload

