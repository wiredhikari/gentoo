# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=STRZELEC
DIST_VERSION=0.71
inherit perl-module

DESCRIPTION="access to standard unix passwd files"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	virtual/perl-Carp
	dev-perl/Crypt-PasswdMD5
	virtual/perl-Exporter
	virtual/perl-File-Path
	virtual/perl-File-Spec
	>=virtual/perl-IO-Compress-2.15.0
	dev-perl/Struct-Compare
"

BDEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"

src_prepare() {
	mkdir t/
	mv test.pl t/test.t
	sed -i 's|test\.pl$|t/test.t|' MANIFEST
	perl-module_src_prepare
}
