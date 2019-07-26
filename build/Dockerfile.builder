FROM golang:1.12.7

RUN apt-get -qq -y install git

ENV GOPATH /
ENV RELEASE_VERSION v0.9.0

RUN mkdir -p $GOPATH/src $GOPATH/pkg $GOPATH/bin

RUN wget -O /usr/local/bin/operator-sdk https://github.com/operator-framework/operator-sdk/releases/download/${RELEASE_VERSION}/operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu && \
    chmod +x /usr/local/bin/operator-sdk