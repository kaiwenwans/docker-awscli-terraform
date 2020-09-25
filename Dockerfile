FROM amazon/aws-cli:latest
ARG TERRAFORM_VERSION=""
WORKDIR /home
COPY install.sh .
RUN chmod a+x install.sh && ./install.sh ${TERRAFORM_VERSION}

ENTRYPOINT ["/bin/sh"]