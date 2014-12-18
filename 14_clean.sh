export INSTALL_AS_USER=yes
export PREFIX=${HOME}$USRLOCAL_MINE
export LOCALBASE=${HOME}$USRLOCAL_MINE
export PKG_DBDIR=${LOCALBASE}/var/db/pkg
export PORT_DBDIR=${LOCALBASE}/var/db/pkg
export DISTDIR=${LOCALBASE}/tmp/dist
export WRKDIRPREFIX=${LOCALBASE}/tmp/work
export PORTSDIR=${HOME}/usr/ports
export PKGTOOLS_CONF=${LOCALBASE}/etc/pkgtools.conf
export DEPENDS_TARGET='install clean'

export LDCONFIG="/sbin/ldconfig -f ${LOCALBASE}/var/run/ld-elf.so.hints -i -R ${LOCALBASE}/etc/ld-elf.so.conf"
export LD_LIBRARY_PATH=${LOCALBASE}/lib
export LD_RUN_PATH=${LOCALBASE}/lib
export PATH=${PATH}:${LOCALBASE}/bin:${LOCALBASE}/sbin
export MANPATH_MAP=${LOCALBASE}/man
export SRCCONF=$HOME$USRLOCAL_MINE/etc/src.conf
export MAKE_JOBS_UNSAFE=yes

cd ${HOME}/usr/ports/lang/python
make clean
cd ${HOME}/usr/ports/www/node
make clean
