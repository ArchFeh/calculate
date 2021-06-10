# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( pypy3 python3_{7,8,9,10} )

inherit distutils-r1

DESCRIPTION="Decrypt and encrypt messages compatible to the SJCL message format"
HOMEPAGE="https://github.com/berlincode/sjcl"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="dev-python/pycryptodome"
DEPEND="${RDEPEND}"
