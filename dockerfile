FROM ubuntu:latest
RUN apt-get update \ 
  && apt-get install -y --no-install-recommends openssh-server \
  && echo "root:Docker!" | chpasswd
COPY initial.sh .
CMD [ "sh","initial.sh" ]