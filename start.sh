#!/bin/bash

sudo nohup ./bin/ngrokd -tlsKey=server.key -tlsCrt=server.crt -domain="adsnews.cn" -httpAddr=":8081" -httpsAddr=":8082" &

