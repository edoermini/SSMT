FROM telegraf

COPY sources.list /etc/apt/sources.list

RUN apt-get update
RUN apt-get install snmp -y
RUN apt-get install snmp-mibs-downloader -y

CMD [ "telegraf" ]
