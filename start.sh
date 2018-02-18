#!/bin/bash

sudo ./bin/ngrokd -tlsKey=server.key -tlsCrt=server.crt -domain="118.89.173.180" -httpAddr=":8081" -httpsAddr=":8082"

