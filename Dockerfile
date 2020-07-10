# Container image that runs your code
FROM python
# RUN apt update && apt install python3 python3-pip
RUN pip3 install pyinflect

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]