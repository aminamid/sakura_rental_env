export GOROOT=$HOME/.local/go
export PATH=$PATH:$GOROOT/bin

cd $HOME/.local/src
git clone https://github.com/zimbatm/direnv.git
cd direnv
DESTDIR=$HOME/.local make install
