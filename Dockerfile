FROM python:2-slim

#install git and chaperone
RUN apt-get update && \
    apt-get install -y python3-pip git && \
    pip3 install chaperone

#create group and user
RUN groupadd -g 999 odpckan && \
    useradd -g 999 -u 999 -m -s /bin/bash odpckan

#deploy odpckan
RUN git clone https://github.com/eea/eea.odpckan.git && \
    pip install -r /eea.odpckan/requirements.txt
COPY .secret /eea.odpckan/.secret

#setup chaperone
RUN mkdir -p /etc/chaperone.d
COPY chaperone.conf /etc/chaperone.d/chaperone.conf

USER odpckan

WORKDIR /eea.odpckan
ENTRYPOINT ["/usr/local/bin/chaperone"]
