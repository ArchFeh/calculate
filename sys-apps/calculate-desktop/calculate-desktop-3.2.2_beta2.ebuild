# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=(python2_7)

inherit distutils-r1 eutils

SRC_URI="ftp://ftp.calculate.ru/pub/calculate/calculate3/${PN}/${P}.tar.bz2
	http://mirror.yandex.ru/calculate/calculate3/${PN}/${P}.tar.bz2"

DESCRIPTION="The program of the desktop configuration Calculate Linux"
HOMEPAGE="http://www.calculate-linux.org/main/en/calculate2"
LICENSE="Apache-2.0"
SLOT="3"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="~sys-apps/calculate-core-3.2.2_beta2
	>=dev-python/python-ldap-2.0[ssl]
	media-gfx/feh
	x11-apps/xmessage
	!<sys-apps/calculate-desktop-3.1.0_alpha1
	sys-apps/keyutils
	sys-auth/pam_keystore
	sys-auth/pam_client
	dev-lang/swig"
RDEPEND="${DEPEND}"
