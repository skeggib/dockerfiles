FROM ubuntu

ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get -y update

RUN apt-get install -y vim

RUN apt-get install -y git
RUN git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset - %s %C(yellow)%d%Creset %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

RUN apt-get install -y bash-completion
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN apt-get install -y less
RUN apt-get install -y tree
RUN apt-get install -y screen

RUN git clone https://github.com/skeggib/dotfiles.git
RUN rm -f .bashrc .inputrc .vimrc
RUN ln -s dotfiles/.bashrc .bashrc
RUN ln -s dotfiles/.inputrc .inputrc
RUN ln -s dotfiles/.vimrc .vimrc
