FROM openjdk:8
RUN cd /home &&   wget https://onedrive.bilibilianime.com/e55T/apache-flume-1.9.0-bin.tar.gz && tar -xvf apache-flume-1.9.0-bin.tar.gz && mv /home/apache-flume-1.9.0-bin /home/flume
ADD start-flume.sh /home/flume/bin/start-flume

EXPOSE 44444

ENTRYPOINT [ "/bin/bash","/home/flume/bin/start-flume"]