FROM codercom/code-server

RUN sudo apt-get update -qq && sudo apt-get install docker.io python3-pip -yqq
RUN sudo pip3 install docker-compose
