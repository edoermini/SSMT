FROM ubuntu

RUN apt-get update
RUN apt-get install snmp -y
RUN apt-get install snmp-mibs-downloader -y
RUN apt-get install telegraf

COPY ./telegraf.conf /etc/telegraf/telegraf.conf

CMD [ "telegraf" ]
