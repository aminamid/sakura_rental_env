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

ldconfig -r | awk '/search/ {print $3}' | tr ":" "\n" > ${HOME}/usr/local/etc/ld-elf.so.conf
echo ${HOME}/usr/local/lib >> ${HOME}/usr/local/etc/ld-elf.so.conf