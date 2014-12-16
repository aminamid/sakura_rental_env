cd $HOME/$DOTLOCAL/src
curl -L https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz | tar xfz -
cd libevent-2.0.21-stable
./configure --prefix=$HOME/$DOTLOCAL
make
make install
cd $HOME/$DOTLOCAL/src
curl -L http://cznic.dl.sourceforge.net/project/tmux/tmux/tmux-1.9/tmux-1.9a.tar.gz | tar xfz - 
cd tmux-1.9a
LDFLAGS=-L$HOME/$DOTLOCAL/lib CPPFLAGS=-I$HOME/$DOTLOCAL/include ./configure --prefix=$HOME/$DOTLOCAL/tmux 
make
make install
cd $HOME/$DOTLOCAL/bin
ln -s ../tmux/bin/tmux tmux

