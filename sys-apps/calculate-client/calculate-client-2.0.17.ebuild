# Copyright 2008 Calculate Pack, http://www.calculate-linux.ru
# Distributed under the terms of the GNU General Public License v2

EAPI="2"

inherit distutils

SRC_URI="ftp://ftp.calculate.ru/pub/calculate/calculate2/${PN}/${P}.tar.bz2"

DESCRIPTION="The program of setting and storing the user account in the domain"
HOMEPAGE="http://www.calculate-linux.ru/Calculate2"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="kde xfce"

DEPEND="=sys-apps/calculate-lib-2.0.15
        >=dev-python/python-ldap-2.0[ssl]
        >=sys-auth/pam_ldap-180[ssl]
        >=sys-auth/nss_ldap-239
        >=sys-apps/keyexec-0.1.2
        >=sys-apps/hal-0.5.9
        sys-apps/keyutils
        sys-auth/pam_keystore
        kde? ( >=kde-misc/kgtk-0.9.5[qt4]
               >=kde-base/kdm-4.2.0[-kdeprefix] )
        xfce? ( x11-misc/slim )"

RDEPEND="${DEPEND}"

ISUPDATE=${T}/${PN}.update

pkg_preinst() {
	touch ${ISUPDATE}
	rm -f /etc/init.d/client
}

pkg_postinst() {
	if use kde || use xfce;
	then
		cl-client --install
		ewarn "Please restart xdm for refreshing configuration files."
	fi
	rm ${ISUPDATE}
}

pkg_prerm() {
	if ! [[ -e ${ISUPDATE} ]];
	then
		cl-client --uninstall
	fi
}
