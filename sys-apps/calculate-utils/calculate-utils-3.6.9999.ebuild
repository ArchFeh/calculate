# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="7"
PYTHON_COMPAT=(python2_7)

inherit calculate-utils-r12 git-r3

DESCRIPTION="A set of Calculate utilities for system installation, build and upgrade"
HOMEPAGE="http://www.calculate-linux.org/main/en/calculate_utilities"
SRC_URI=""

LICENSE="Apache-2.0"
SLOT="3"
KEYWORDS=""

src_unpack() {
	prepare_module_info
	for MODULE in "${MODULE_INFO[@]}"
	do
		MODULE_DATA=( $MODULE )
		MODULE_PN=${MODULE_DATA[0]}
		EGIT_CHECKOUT_DIR=${WORKDIR}/${MODULE_PN}-${PV} EGIT_REPO_URI=git://git.calculate-linux.org/calculate-3/${MODULE_PN}.git git-r3_src_unpack
	done
}
