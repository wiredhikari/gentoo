# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

IUSE=""
MODS="nslcd"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for nslcd"

if [[ ${PV} != 9999* ]] ; then
	KEYWORDS="amd64 arm arm64 ~mips x86"
fi
