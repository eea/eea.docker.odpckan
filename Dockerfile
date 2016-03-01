FROM python:2

#install git and chaperone
RUN apt-get update && \
    apt-get install -y python3-pip git && \
    pip3 install chaperone

#deploy odpckan
RUN git clone https://github.com/eea/eea.odpckan.git && \
    pip install -r /eea.odpckan/requirements.txt && \
    cp /eea.odpckan/.secret.example /eea.odpckan/.secret

#setup chaperone
RUN mkdir -p /etc/chaperone.d
COPY chaperone.conf /etc/chaperone.d/chaperone.conf

WORKDIR /eea.odpckan
ENTRYPOINT ["/usr/local/bin/chaperone"]
