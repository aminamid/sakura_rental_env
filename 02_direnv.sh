export GOROOT=$HOME/$LOCALDIR_MINE/go
export PATH=$PATH:$GOROOT/bin

cd $HOME/$LOCALDIR_MINE/src
git clone https://github.com/zimbatm/direnv.git
cd direnv
DESTDIR=$HOME/$LOCALDIR_MINE make install
