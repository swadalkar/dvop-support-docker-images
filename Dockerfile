FROM dvopsimages.azurecr.io/base/ubuntubase
RUN apt update \
    && apt install -y wget \
    && apt install -y unzip \
    && apt install -y vim \
    && apt install -y openssh-client \
    && apt install -y curl

RUN wget https://releases.hashicorp.com/terraform/1.8.0/terraform_1.8.0_linux_amd64.zip
RUN unzip terraform_1.8.0_linux_amd64.zip
RUN mv terraform /usr/local/bin/

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.15.1/bin/linux/amd64/kubectl
RUN chmod u+x kubectl && mv kubectl /bin/kubectl

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash 