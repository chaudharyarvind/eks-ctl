FROM alpine:latest
# Add dependencies
RUN apk add --no-cache \
    curl \
    && true
RUN curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp \
    && mv /tmp/eksctl /usr/local/bin
ENTRYPOINT ["eksctl"]
CMD ["version"]
