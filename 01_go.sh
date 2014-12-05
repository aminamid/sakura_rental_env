export OSNAME=$(tr '[A-Z]' '[a-z]' <<< $(uname -s))
export ARCHNAME=$(tr '[A-Z]' '[a-z]' <<< $(uname -m))

export GOFILENAME=go1.3.3.$OSNAME-$ARCHNAME.tar.gz
export GOURL=https://storage.googleapis.com/golang

mkdir -p $HOME/.local/{src,bin}
cd $HOME/.local/src
wget --no-check-certificate $GOURL/$GOFILENAME
tar xfz $GOFILENAME
mv go ~/.local/
