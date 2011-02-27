# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

DESCRIPTION="Calculate Linux (network meta package)"
HOMEPAGE="http://www.calculate-linux.org"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="cdistro_desktop cdistro_CLD cdistro_CLDG cdistro_CLDX cdistro_CDS"

#net-misc/pino
RDEPEND="
	cdistro_desktop? (
		app-text/wgetpaste
		net-analyzer/nmap
		net-im/skype
		www-client/chromium
		www-plugins/adobe-flash
	)
	cdistro_CLD? (
		net-im/choqok
		net-irc/konversation
		net-p2p/eiskaltdcpp
	)
	cdistro_CLDG? (
		net-ftp/filezilla
		net-im/pidgin
		net-irc/xchat
		net-news/liferea
		net-p2p/deluge
		net-p2p/linuxdcpp
		x11-plugins/pidgin-hotkeys
	)
	cdistro_CLDX? (
		net-ftp/filezilla
		net-news/liferea
		mail-client/claws-mail
		mail-client/claws-mail-rssyl
		net-dialup/gnome-ppp
		net-fs/fusesmb
		net-im/pidgin
		net-irc/xchat
		net-p2p/deluge
		net-p2p/linuxdcpp
		x11-plugins/pidgin-hotkeys
		x11-plugins/pidgin-libnotify
	)
	cdistro_CDS? (
		app-text/wgetpaste
		net-analyzer/fail2ban
		net-analyzer/iptraf
		net-analyzer/macchanger
		net-analyzer/nmap
		net-analyzer/sarg
		net-analyzer/tcpdump
		net-analyzer/traceroute
		net-analyzer/vnstat
		net-dialup/minicom
		net-irc/weechat
		net-misc/whois
		net-p2p/bittorrent
		net-p2p/btpd
		www-client/links
	)
"

