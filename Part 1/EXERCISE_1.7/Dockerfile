FROM ubuntu:22.04
WORKDIR /usr/src/app
COPY script.sh .
RUN chmod +x script.sh
RUN apt-get update && apt install -y curl
CMD ./script.sh