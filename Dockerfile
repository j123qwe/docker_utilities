FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -yq
RUN apt-get install -yq apt-utils apt-transport-https gnupg2
RUN apt-get install -yq zip unzip 
RUN apt-get install -yq ssh ssh-import-id sshpass
RUN apt-get install -yq net-tools iputils-ping inetutils-traceroute whois
RUN apt-get install -yq vim vim-scripts
RUN apt-get install -yq git
RUN apt-get install -yq expect
RUN apt-get install -yq jq
RUN apt-get install -yq tcpdump tshark
RUN apt-get install -yq multitail
RUN apt-get install -yq lrzsz
RUN apt-get install -yq nload bmon
RUN apt-get install -yq dnsutils nmap netcat
RUN apt-get install -yq snmp
RUN apt-get install -yq curl
RUN mkdir /scripts
ENTRYPOINT [ "tail", "-f", "/dev/null" ]
