# Minimal Docker image for CONCOCT using Alpine base
FROM alpine:latest

# install CONCOCT
RUN apk update && \
    apk add --no-cache bash git py3-pip python3 && \
    pip install --no-cache-dir --break-system-packages -r "https://github.com/BinPro/CONCOCT/raw/refs/tags/1.1.0/requirements.txt" && \
    pip install --no-cache-dir --break-system-packages --no-build-isolation "concoct @ git+https://github.com/BinPro/CONCOCT.git@1.1.0"
