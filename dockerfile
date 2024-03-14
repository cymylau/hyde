FROM ubuntu:latest
LABEL maintainer="https://github.com/cymylau/hyde" 
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install ruby-full build-essential zlib1g-dev -y
RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
RUN echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
RUN echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
RUN . ~/.bashrc
RUN gem install jekyll bundler
