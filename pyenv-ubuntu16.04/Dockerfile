FROM ubuntu:16.04
LABEL maintainer="nmasahiro <masahironomura5325@gmail.com>"

ENV HOME /root
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install \
            git \
            make \
            build-essential \
            python-dev \
            python-pip \
            libssl-dev \
            zlib1g-dev \
            libbz2-dev \
            libreadline-dev \
            libsqlite3-dev \
            curl

RUN git clone git://github.com/yyuu/pyenv.git $HOME/.pyenv
RUN git clone https://github.com/yyuu/pyenv-virtualenv.git $HOME/.pyenv/plugins/pyenv-virtualenv
