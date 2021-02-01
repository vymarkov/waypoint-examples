FROM gitpod/workspace-full

# https://learn.hashicorp.com/tutorials/waypoint/get-started-install
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add - &&\
    sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" &&\
    sudo apt-get update && sudo apt-get install waypoint &&\
    brew install kubectl helm 

RUN brew install doctl

ENV HOME=$GITPOD_REPO_ROOT/.tmp