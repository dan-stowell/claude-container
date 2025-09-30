FROM alpine:3.19

# Install required dependencies
RUN apk add --no-cache \
    bash \
    curl \
    ca-certificates \
    coreutils \
    grep \
    sed

# Install your application
RUN curl -fsSL https://claude.ai/install.sh | bash -s 2.0.1

# Create directories with proper ownership
RUN mkdir -p /claude /workspace && \
    chown -R 1000:1000 /claude /workspace

WORKDIR /workspace
CMD ["sh", "-c", "echo 'Claude Code container is ready!'"]