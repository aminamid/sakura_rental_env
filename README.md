```
python -c 'import site,os; os.makedirs(site.USER_SITE)'
mkdir -p $HOME/.local/{src,bin}


export PATH=$PATH:$HOME/.local/bin


cd $HOME/.local/src
wget --no-check-certificate https://storage.googleapis.com/golang/go1.3.3.freebsd-amd64.tar.gz
tar xfz go1.3.3.freebsd-amd64.tar.gz
mv go ~/.local/
export GOROOT=$HOME/.local/go
export PATH=$PATH:$GOROOT/bin

cd $HOME/.local/src
git clone https://github.com/zimbatm/direnv.git
cd direnv
DESTDIR=$HOME/.local make install
```

```bash:.bash_profile
eval "$(direnv hook bash)"
```

```
cd $HOME/.local/src
wget --no-check-certificate  https://pypi.python.org/packages/source/v/virtualenv/virtualenv-1.11.6.tar.gz
tar xfz virtualenv-1.11.6.tar.gz
cd virtualenv-1.11.6
python setup.py build
mv build/lib/* $HOME/.local/bin
chmod +x $HOME/.local/bin/virtualenv.py
```

```.envrc
if ! [ -d .direnv/virtualenv ]; then
  virtualenv.py --no-site-packages --distribute .direnv/virtualenv
  virtualenv.py --relocatable .direnv/virtualenv
fi
. .direnv/virtualenv/bin/activate
```

```.envrc
git config --global core.excludesfile "~/.gitignore_global"
cat <<EXCL >> ~/.gitignore_global
# Direnv stuff
.direnv
.envrc
# Editor files #
################
*~
*.swp
*.swo
virtualenv
EXCL
```

```
git config user.name "username"
git config user.email username@example.con
```

# get ports

mkdir -p $HOME/usr/local/{etc,lib,tmp/dist,tmp/work,var/db/pkg}
mkdir -p $HOME/usr/local/ports
cd $HOME/usr
fetch ftp://ftp.jp.freebsd.org/pub/FreeBSD/ports/ports/ports.tar.gz
tar xzf ports.tar.gz
cd $HOME/usr/ports
fetch http://www.FreeBSD.org/ports/INDEX-9.bz2
bunzip2 INDEX-9.bz2

# bash_profile

export INSTALL_AS_USER=yes
export PREFIX=${HOME}/usr/local
export LOCALBASE=${HOME}/usr/local
export PKG_DBDIR=${LOCALBASE}/var/db/pkg
export PORT_DBDIR=${LOCALBASE}/var/db/pkg
export DISTDIR=${LOCALBASE}/tmp/dist
export WRKDIRPREFIX=${LOCALBASE}/tmp/work
export PORTSDIR=${HOME}/usr/ports
export PKGTOOLS_CONF=${LOCALBASE}/etc/pkgtools.conf
export DEPENDS_TARGET='install clean'
export MAKE_JOBS_UNSAFE=yes

# make ld-elf.so.conf

% ldconfig -r | awk '/search/ {print $3}' | tr ":" "\n" > ~/usr/local/etc/ld-elf.so.conf
% echo ${HOME}/usr/local/lib >> ~/usr/local/etc/ld-elf.so.conf

# bash_profile

export LDCONFIG="/sbin/ldconfig -f ${LOCALBASE}/var/run/ld-elf.so.hints -i -R ${LOCALBASE}/etc/ld-elf.so.conf"
export LD_LIBRARY_PATH=${LOCALBASE}/lib
export LD_RUN_PATH=${LOCALBASE}/lib
export PATH=${PATH}:${LOCALBASE}/bin:${LOCALBASE}/sbin
export MANPATH_MAP=${LOCALBASE}/bin ${LOCALBASE}/man

# install node

```
cd $HOME/usr/ports/lang/python
make install clean
```

work around for make cannot find python-path

```
mkdir $HOME$HOME
cd $HOME$HOME
ln -s $HOME/usr
```

```
cd $HOME/usr/ports/www/node
make install clean
```

