FROM ubuntu:bionic
MAINTAINER Jermine.hu@qq.com
WORKDIR /app
COPY ./sources.list /etc/apt/sources.list
RUN apt-get update -y && \
    apt-get install -y python3.6 python3-pip
    
RUN pip3 install https://download.pytorch.org/whl/cpu/torch-0.3.0.post4-cp36-cp35m-linux_x86_64.whl ;\
    pip3 install torchvision -i https://mirrors.aliyun.com/pypi/simple/ 
