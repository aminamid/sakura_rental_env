mkdir -p $HOME/.local/{src,bin}
cd $HOME/.local/src
wget --no-check-certificate https://storage.googleapis.com/golang/go1.3.3.freebsd-amd64.tar.gz
tar xfz go1.3.3.freebsd-amd64.tar.gz
mv go ~/.local/
