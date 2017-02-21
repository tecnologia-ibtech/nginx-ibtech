#!/bin/sh

curl -o $DIR/includes/expires.conf https://raw.githubusercontent.com/ibtechitsolutions/docker-lua-resty-auto-ssl/master/includes/expires.conf
curl -o $DIR/conf.d/10-Otimizacao.conf https://raw.githubusercontent.com/ibtechitsolutions/docker-lua-resty-auto-ssl/master/conf.d.sample/10-Otimizacao.conf
curl -o $DIR/conf.d/15-Proxy.conf https://raw.githubusercontent.com/ibtechitsolutions/docker-lua-resty-auto-ssl/master/conf.d.sample/15-Proxy.conf
curl -o $DIR/conf.d/20-Default.conf https://raw.githubusercontent.com/ibtechitsolutions/docker-lua-resty-auto-ssl/master/conf.d.sample/20-Default.conf
curl -o $DIR/conf.d/50-Couchdb.conf https://raw.githubusercontent.com/ibtechitsolutions/docker-lua-resty-auto-ssl/master/conf.d.sample/50-Couchdb.conf

/usr/bin/sed -i 's/\$REMOTE_HOST/'$REMOTE_HOST'/g' $DIR/conf.d/*
/usr/bin/sed -i 's/\$PROXY_TOMCAT/'$PROXY_TOMCAT'/g' $DIR/conf.d/*
/usr/bin/sed -i 's/\$PROXY_COUCHDB/'$PROXY_COUCHDB'/g' $DIR/conf.d/*
