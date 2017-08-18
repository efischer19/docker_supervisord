FROM ubuntu:latest
RUN apt-get update && apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor
RUN mkdir -p /my_scripts
COPY supervisord.conf /my_scripts/supervisord.conf
COPY script1.sh /my_scripts/script1.sh
COPY script2.sh /my_scripts/script2.sh
CMD ["/usr/bin/supervisord", "-c", "/my_scripts/supervisord.conf"]
