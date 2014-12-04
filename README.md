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
