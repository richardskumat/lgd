FROM debian:10
RUN apt-get update && apt-get upgrade -y && apt-get install lgogdownloader -y && \
    rm -rf /var/lib/apt/lists/* && apt-get clean
RUN useradd -m -s /bin/bash user
USER user