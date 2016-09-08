FROM ubuntu

RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update
RUN apt-get -y install apache2-utils openssh-server ping

CMD ["/etc/init.d/ssh", "start", "-D"]




