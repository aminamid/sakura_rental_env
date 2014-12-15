export GOROOT=$HOME/$DOTLOCAL/go
export PATH=$PATH:$GOROOT/bin

cd $HOME/$DOTLOCAL/src
git clone https://github.com/zimbatm/direnv.git
cd direnv
DESTDIR=$HOME/$DOTLOCAL make install
