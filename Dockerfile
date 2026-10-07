# Minimal Docker image for CONCOCT using Alpine base
FROM alpine:latest

# install CONCOCT
RUN apk update && \
    apk add --no-cache bash py3-pip python3 && \
    pip install --no-cache-dir -e git://github.com/BinPro/CONCOCT.git@1.1.0
    #wget -qO- "https://github.com/BinPro/CONCOCT/archive/refs/tags/1.1.0.tar.gz" | tar -zx && \
    #cd CONCOCT-* && \
    #pip install -r requirements.txt && \
    ##make && \
    ##chmod a+x minimap2 && \
    ##mv minimap2 /usr/local/bin/minimap2 && \
    #cd .. && \
    #rm -rf CONCOCT-*
