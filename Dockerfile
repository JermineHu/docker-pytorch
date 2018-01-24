FROM alpine
MAINTAINER Jermine.hu@qq.com
WORKDIR /app
RUN set -xe ;\
         apk add --no-cache curl python3 gcc ;\
         curl -sSL https://bootstrap.pypa.io/get-pip.py | python3 ;\
         pip3 -V
RUN pip3 install https://download.pytorch.org/whl/cpu/torch-0.3.0.post4-cp36-cp36m-linux_x86_64.whl ;\
    pip3 install torchvision -i https://mirrors.aliyun.com/pypi/simple/ 
