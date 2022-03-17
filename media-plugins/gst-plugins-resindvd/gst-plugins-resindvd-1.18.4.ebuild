# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
GST_ORG_MODULE=gst-plugins-bad

inherit gstreamer-meson

DESCRIPTION="DVD playback support plugin for GStreamer"
KEYWORDS="~alpha amd64 arm ~arm64 ~hppa ~ia64 ~mips ppc ppc64 ~riscv ~sparc x86"
IUSE=""

RDEPEND="
	>=media-libs/libdvdnav-4.2.0-r1:=[${MULTILIB_USEDEP}]
	>=media-libs/libdvdread-4.2.0-r1:=[${MULTILIB_USEDEP}]
"
DEPEND="${RDEPEND}"
