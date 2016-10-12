FROM ubuntu:xenial

RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  

RUN apt-get -y update && apt-get install -y python-pip wget default-jre
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN apt-get install oracle-java8-installer
RUN update-java-alternatives -s java-8-oracle
RUN pip install pip --upgrade
RUN pip install setuptools --upgrade
RUN pip install html5validator
