FROM docker.elastic.co/kibana/kibana:6.4.0

USER root

RUN yum install -y iproute net-tools

USER kibana

RUN /opt/kibana/bin/kibana-plugin install https://github.com/sirensolutions/sentinl/releases/download/tag-6.4.2-0/sentinl-v6.4.0.zip
RUN chmod +x /usr/share/kibana/plugins/sentinl/phantomjs/phantomjs-2.1.1-linux-x86_64/bin/phantomjs
