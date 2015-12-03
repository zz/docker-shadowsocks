FROM debian

RUN apt-get -y update && \
	apt-get -y install python python-dev python-pip curl wget unzip gcc swig automake make perl cpio

COPY shadowsocks.json.in /etc/shadowsocks.json.in
COPY run.sh /run.sh
RUN pip install shadowsocks

ENTRYPOINT ["/run.sh"]
