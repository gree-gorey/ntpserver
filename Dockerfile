FROM ubuntu:16.04

RUN apt-get update && apt-get install -y ntp=1:4.2.8* && apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["/usr/sbin/ntpd", "-n"]

EXPOSE 123
