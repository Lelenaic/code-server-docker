FROM codercom/code-server

RUN sudo apt-get update -qq && sudo apt-get install docker.io curl zsh -yqq
RUN sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN sudo chmod +x /usr/local/bin/docker-compose
RUN curl -Lo /tmp/install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
RUN sh /tmp/install.sh --unattended
RUN sudo -u root sh /tmp/install.sh --unattended
RUN sudo usermod --shell /bin/zsh coder
