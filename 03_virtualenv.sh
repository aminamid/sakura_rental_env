cd $HOME/$DOTLOCAL/src
curl -L https://pypi.python.org/packages/source/v/virtualenv/virtualenv-1.11.6.tar.gz | tar xfz -
cd virtualenv-1.11.6
python setup.py build
mv build/lib/* $HOME/$DOTLOCAL/bin
chmod +x $HOME/$DOTLOCAL/bin/virtualenv.py
