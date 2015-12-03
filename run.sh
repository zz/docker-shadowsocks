#!/bin/sh

cat /etc/shadowsocks.json.in \
    | sed "s/SERVER_PORT/${SERVER_PORT:-443}/" \
    | sed "s/SERVER_PASSWORD/${SERVER_PASSWORD:-yourpassword}/" \
    > /etc/shadowsocks.json

exec /usr/bin/python /usr/local/bin/ssserver -c /etc/shadowsocks.json
