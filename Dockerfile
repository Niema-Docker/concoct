# Minimal Docker image for CONCOCT using Alpine base
FROM alpine:latest

# install CONCOCT
RUN apk update && \
    apk add --no-cache bash py3-pip python3 && \
    pip install --no-cache-dir --break-system-packages "concoct @ git+https://github.com/BinPro/CONCOCT.git@1.1.0"
