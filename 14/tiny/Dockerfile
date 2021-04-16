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

# Sets default timezone
RUN ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

# Default command
CMD ["bash"]
