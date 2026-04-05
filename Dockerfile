FROM ubuntu:latest
WORKDIR /minecraft
COPY . .
EXPOSE 42069
RUN apt-get update && \
	apt upgrade -y && \
	apt install -y wget openjdk-21-jre-headless && \
	wget https://fill-data.papermc.io/v1/objects/da497e12b43e5b61c5df150e4bfd0de0f53043e57d2ac98dd59289ee9da4ad68/paper-1.21.11-127.jar 
CMD ["./start-server.sh"]
