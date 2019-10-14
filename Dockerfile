FROM ubuntu:latest
RUN apt-get update \ 
  && apt-get install -y --no-install-recommends openssh-server \
  && echo "root:Docker!" | chpasswd
COPY initial.sh .
EXPOSE 80 2222
CMD [ "sh","initial.sh" ]
