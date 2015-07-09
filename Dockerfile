FROM ubuntu

# Do system updates and install dependencies
RUN apt-get update
RUN apt-get -y upgrade
RUN sudo apt-get -y install git wget
RUN apt-get clean