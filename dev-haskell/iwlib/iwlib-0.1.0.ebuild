# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Bindings for the iw C library"
HOMEPAGE="https://github.com/jaor/iwlib"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
	net-wireless/wireless-tools
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
