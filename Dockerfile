
FROM python:3.6.4-slim-stretch
MAINTAINER Jermine.hu@qq.com

WORKDIR /app

COPY ./sources.list /etc/apt/sources.list

RUN apt-get update -y 

RUN pip3 install http://download.pytorch.org/whl/cpu/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl ;\
    pip3 install torchvision -i http://mirrors.aliyun.com/pypi/simple/ 
