# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="Glob"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Globbing library"
HOMEPAGE="http://iki.fi/matti.niemenmaa/glob/"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/dlist-0.4:=[profile?] <dev-haskell/dlist-1.1:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	>=dev-haskell/transformers-compat-0.3:=[profile?] <dev-haskell/transformers-compat-0.7:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.7
		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
		>=dev-haskell/test-framework-0.2 <dev-haskell/test-framework-1
		>=dev-haskell/test-framework-hunit-0.2 <dev-haskell/test-framework-hunit-1
		>=dev-haskell/test-framework-quickcheck2-0.3 <dev-haskell/test-framework-quickcheck2-1 )
"

S="${WORKDIR}/${MY_P}"
