FROM ubuntu:14.04
MAINTAINER Ang <angtf@um.edu.my>
RUN apt-get update 
RUN apt-get -y install git 
RUN apt-get -y install python-pip
RUN apt-get -y install libcr-dev mpich2 mpich2-doc
RUN git clone https://github.com/dispel4py/dispel4py.git
RUN cd dispel4py && python setup.py install
RUN cd dispel4py && dispel4py simple dispel4py.examples.graph_testing.pipeline_test -i 5
