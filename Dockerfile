# Minimal Docker image for CONCOCT using Alpine base
FROM alpine:latest

# install CONCOCT
RUN apk update && \
    apk add --no-cache bash build-base g++ gcc git gsl-dev musl-dev py3-pip python3 python3-dev && \
    pip install --no-cache-dir --break-system-packages setuptools wheel && \
    pip install --no-cache-dir --break-system-packages -r "https://github.com/BinPro/CONCOCT/raw/refs/tags/1.1.0/requirements.txt" && \
    pip install --no-cache-dir --break-system-packages --no-build-isolation "concoct @ git+https://github.com/BinPro/CONCOCT.git@1.1.0"
