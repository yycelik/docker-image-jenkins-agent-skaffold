# Start with the jenkins/agent:latest-jdk17 base image
FROM jenkins/inbound-agent:latest

# Switch to the root user to perform privileged operations
USER root


# get skaffold
RUN curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64

# install skaffold
RUN chmod +x skaffold
RUN mv skaffold /usr/local/bin


# get kubectl
ARG KUBECTL_VERSION=v1.22.0
RUN curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl"

#install kubectl
RUN chmod +x kubectl
RUN mv kubectl /usr/local/bin/


USER jenkins