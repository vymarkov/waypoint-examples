FROM gitpod/workspace-full

# https://learn.hashicorp.com/tutorials/waypoint/get-started-install
RUN brew tap hashicorp/tap &&\
    brew install hashicorp/tap/waypoint &&\
    brew install kubectl helm