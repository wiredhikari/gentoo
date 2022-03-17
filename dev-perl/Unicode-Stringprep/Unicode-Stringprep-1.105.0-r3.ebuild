# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=CFAERBER
DIST_VERSION=1.105
DIST_EXAMPLES=("eg/*")
inherit perl-module

DESCRIPTION="Preparation of Internationalized Strings (RFC 3454)"

SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=virtual/perl-Unicode-Normalize-1
"
BDEPEND="${RDEPEND}
	>=dev-perl/Module-Build-0.420.0
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-NoWarnings
	)
"

PERL_RM_FILES=("t/10_pod_check.t" "t/11_pod_coverage.t")
