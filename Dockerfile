FROM ubuntu:xenial

RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  

RUN apt-get -y update && apt-get install -y python-pip wget default-jre software-properties-common
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
RUN apt-get -y install oracle-java8-installer
RUN update-java-alternatives -s java-8-oracle
RUN pip install pip --upgrade
RUN pip install setuptools --upgrade
RUN pip install html5validator
