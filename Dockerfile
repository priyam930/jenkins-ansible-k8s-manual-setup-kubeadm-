FROM ubuntu:20.04
# Install required packages
RUN apt-get update && \
    apt-get install -y python3 python3-pip ansible vim sshpass openssh-client iputils-ping && \
    apt-get clean
# Set working directory
WORKDIR /ansible
# Keep the container running
CMD ["sleep", "infinity"]
