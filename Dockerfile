FROM ubuntu:16.04 as vimBuilder

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /root
RUN apt-get update
RUN apt-get -f install
RUN apt-get install -y git build-essential ncurses-dev lua5.2 lua5.2-dev luajit python-dev python3-dev ruby-dev
RUN git clone https://github.com/vim/vim
WORKDIR /root/vim
RUN ./configure --with-features=huge --enable-multibyte --enable-luainterp=dynamic --enable-gpm --enable-cscope --enable-fontset --enable-fail-if-missing --prefix=/usr/local --enable-pythoninterp=dynamic --enable-python3interp=dynamic --enable-rubyinterp=dynamic
RUN make && make install
 #&& rm -rf /root/vim

RUN mkdir -p /root/.vim/bundle && git clone https://github.com/Shougo/neobundle.vim /root/.vim/bundle/neobundle.vim && cd /root/.vim/bundle/neobundle.vim/bin && ./neoinstall

COPY ./.vimrc /root/.vimrc
COPY ./config /root/.vim/config

WORKDIR /root



