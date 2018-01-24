#FROM alpine
#MAINTAINER Jermine.hu@qq.com
#WORKDIR /app
#RUN set -xe ;\
#         apk add --no-cache curl python3 gcc g++ libc-dev musl-dev binutils ;\
#         curl -sSL https://bootstrap.pypa.io/get-pip.py | python3 ;\
#         pip3 -V
         
#RUN pip3 install https://download.pytorch.org/whl/cpu/torch-0.3.0.post4-cp36-cp36m-linux_x86_64.whl ;\
#    pip3 install torchvision -i https://mirrors.aliyun.com/pypi/simple/ 

#FROM debian:latest
#MAINTAINER Jermine.hu@qq.com  
#RUN apt-get -qq update && apt-get -qq -y install curl bzip2 \
#    && curl -sSL https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -o /tmp/miniconda.sh \
#    && bash /tmp/miniconda.sh -bfp /usr/local \
#    && rm -rf /tmp/miniconda.sh \
#    && conda install -y python=3 \
#    && conda update conda \
#    && apt-get -qq -y remove curl bzip2 \
#    && apt-get -qq -y autoremove \
#    && apt-get autoclean \
#    && rm -rf /var/lib/apt/lists/* /var/log/dpkg.log \
#    && conda clean --all --yes
#         
#ENV PATH /opt/conda/bin:$PATH
#RUN conda install -y pytorch-cpu torchvision -c pytorch

FROM ubuntu:artful
MAINTAINER Jermine.hu@qq.com
WORKDIR /app
COPY ./sources.list /etc/apt/sources.list
RUN apt-get update -y && apt-get upgrade -y ;\
    python3 -V && pip -V
RUN pip3 install https://download.pytorch.org/whl/cpu/torch-0.3.0.post4-cp36-cp36m-linux_x86_64.whl  ;\
    pip3 install torchvision -i https://mirrors.aliyun.com/pypi/simple/ 
