FROM gcc:6.5

RUN apt-get update \
    && apt-get install -y zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/
