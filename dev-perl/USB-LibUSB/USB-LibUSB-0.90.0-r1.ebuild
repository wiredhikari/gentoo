# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_VERSION=0.09
DIST_AUTHOR=AMBA
KEYWORDS="amd64 ~x86"
inherit perl-module

DESCRIPTION="Perl interface to the libusb-1.0 API"

SLOT="0"

RDEPEND="
	virtual/libusb:1
	virtual/perl-Carp
	virtual/perl-Exporter
	dev-perl/Moo
	virtual/perl-XSLoader
"
BDEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? ( virtual/perl-Test-Simple )
"
