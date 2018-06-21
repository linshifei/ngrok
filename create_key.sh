#!/bin/sh
#export NGROK_DOMAIN="adshonor.com"
export NGROK_DOMAIN="118.89.173.180"

openssl genrsa -out base.key 2048
openssl req -new -x509 -nodes -key base.key -days 10000 -subj "/CN=$NGROK_DOMAIN" -out base.pem
openssl genrsa -out server.key 2048
openssl req -new -key server.key -subj "/CN=$NGROK_DOMAIN" -out server.csr
openssl x509 -req -in server.csr -CA base.pem -CAkey base.key -CAcreateserial -days 10000 -out server.crt

<<<<<<< HEAD
cp base.pem assets/client/tls/ngrokroot.crt  
cp server.crt assets/server/tls/snakeoil.crt  
cp server.key assets/server/tls/snakeoil.key  
=======
cp base.pem assets/client/tls/ngrokroot.crt
cp server.crt assets/server/tls/snakeoil.crt
cp server.key assets/server/tls/snakeoil.key
>>>>>>> 90ab36d1cb19a27808877980a98ae3f79a89f3ed
