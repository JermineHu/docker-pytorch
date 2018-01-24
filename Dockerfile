FROM alpine

MAINTAINER Jermine.hu@qq.com

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN set -xe ;\
         apk add --no-cache curl python3 gcc ;\
         curl -sSL https://bootstrap.pypa.io/get-pip.py | python3 ;\
         pip3 -V

RUN pip3 install http://download.pytorch.org/whl/cpu/torch-0.3.0.post4-cp35-cp35m-linux_x86_64.whl ;\

    pip3 install torchvision -i https://mirrors.aliyun.com/pypi/simple/  ;\

    pip3 install -r /app/requirements.txt -i  https://mirrors.aliyun.com/pypi/simple/ ;\
