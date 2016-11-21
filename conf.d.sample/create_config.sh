#!/bin/sh

curl -o $1/10-Otimizacao.conf https://raw.githubusercontent.com/ibtechitsolutions/docker-lua-resty-auto-ssl/master/conf.d.sample/10-Otimizacao.conf
curl -o $1/20-Default.conf https://raw.githubusercontent.com/ibtechitsolutions/docker-lua-resty-auto-ssl/master/conf.d.sample/20-Default.conf
curl -o $1/50-Couchdb.conf https://raw.githubusercontent.com/ibtechitsolutions/docker-lua-resty-auto-ssl/master/conf.d.sample/50-Couchdb.conf

sed -i 's/\$REMOTE_HOST/'$2'/g' $1/*
sed -i 's/\$PROXY_TOMCAT/'$3'/g' $1/*
sed -i 's/\$PROXY_COUCHDB/'$4'/g' $1/*
