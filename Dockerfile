FROM debian:sid
RUN apt-get update && apt-get install lgogdownloader -y && \
    rm -rf /var/lib/apt/lists/* && apt-get clean
RUN useradd -m -s /bin/bash user
USER user