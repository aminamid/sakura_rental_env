cd $HOME/$LOCALDIR_MINE/src
curl -L https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz | tar xfz -
cd libevent-2.0.21-stable
./configure --prefix=$HOME/$LOCALDIR_MINE
make
make install
cd $HOME/$LOCALDIR_MINE/src
curl -L http://cznic.dl.sourceforge.net/project/tmux/tmux/tmux-1.9/tmux-1.9a.tar.gz | tar xfz - 
cd tmux-1.9a
LDFLAGS=-L$HOME/$LOCALDIR_MINE/lib CPPFLAGS=-I$HOME/$LOCALDIR_MINE/include ./configure --prefix=$HOME/$LOCALDIR_MINE/tmux 
make
make install
cd $HOME/$LOCALDIR_MINE/bin
ln -s ../tmux/bin/tmux tmux

