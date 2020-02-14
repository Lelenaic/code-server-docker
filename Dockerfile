FROM codercom/code-server

RUN sudo apt-get update -qq && sudo apt-get install docker.io curl -yqq
RUN sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN sudo chmod +x /usr/local/bin/docker-compose
