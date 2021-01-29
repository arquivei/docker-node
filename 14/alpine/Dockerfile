FROM node:14.15-alpine3.10

# Forces git clone to ignore unknown host
ENV GIT_SSH_COMMAND='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'

# Installs dependencies from alpine's repository
RUN apk --no-cache upgrade && \
    apk --no-cache add make \
                       tzdata \
                       ca-certificates \
                       curl \
                       gzip \
                       git \
                       gcc \
                       g++ \
                       openssh \
                       python \
                       py-pip \
                       curl \
                       bash \
                       bc \
                       openssl-dev

# Installs Google's client
RUN curl https://sdk.cloud.google.com > /tmp/gcloud_install.sh
RUN bash /tmp/gcloud_install.sh --disable-prompts --install-dir=/usr/local
ENV PATH $PATH:/usr/local/google-cloud-sdk/bin

# Sets default timezone
RUN ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

# Cleanup
RUN rm -rf /tmp/*

# Copy utility script to work with go in the bitbucket's pipeline
COPY /scripts/*.sh /

# Default command
CMD ["bash"]
