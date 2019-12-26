FROM ubuntu

RUN apt -y update

RUN apt install -y vim
RUN apt install -y git
RUN apt install -y bash-completion
RUN apt install -y wget
RUN apt install -y curl
RUN apt install -y less
RUN apt install -y tree
RUN apt install -y screen

RUN git clone https://github.com/skeggib/dotfiles.git
RUN rm .bashrc .inputrc .vimrc
RUN ln -s dotfiles/.bashrc .bashrc
RUN ln -s dotfiles/.inputrc .inputrc
RUN ln -s dotfiles/.vimrc .vimrc
