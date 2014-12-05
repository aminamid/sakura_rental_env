mkdir -p $HOME/usr/local/{etc,lib,tmp/dist,tmp/work,var/db/pkg}
mkdir -p $HOME/usr/local/ports
cd $HOME/usr
fetch ftp://ftp.jp.freebsd.org/pub/FreeBSD/ports/ports/ports.tar.gz
tar xzf ports.tar.gz
cd $HOME/usr/ports
fetch http://www.FreeBSD.org/ports/INDEX-9.bz2
bunzip2 INDEX-9.bz2
