FROM ubuntu

RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update
RUN apt-get -y install apache2-utils openssh-server inetutils-ping

RUN git clone https://github.com/EZLippi/WebBench.git -b master --depth=1 \
    && cd WebBench \
    && make \
    && make install

CMD ["/etc/init.d/ssh", "start", "-D"]




