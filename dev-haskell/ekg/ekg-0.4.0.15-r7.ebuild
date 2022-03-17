# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Remote monitoring of processes"
HOMEPAGE="https://github.com/tibbe/ekg"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.4:=[profile?] <dev-haskell/aeson-1.6:=
	>=dev-haskell/ekg-core-0.1:=[profile?] <dev-haskell/ekg-core-0.2:=[profile?]
	>=dev-haskell/ekg-json-0.1:=[profile?] <dev-haskell/ekg-json-0.2:=[profile?]
	<dev-haskell/network-3.2:=[profile?]
	<dev-haskell/snap-core-1.1:=[profile?]
	<dev-haskell/snap-server-1.2:=[profile?]
	<dev-haskell/text-1.3:=[profile?]
	<dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
src_prepare() {
	default

	# As per https://hackage.haskell.org/package/ekg-0.4.0.15/revisions/
	cabal_chdeps \
		'base >= 4.5 && < 4.12'	'base >=4.5' \
		'aeson >= 0.4 && < 1.3'	'aeson >= 0.4' \
		'network < 2.7'			'network' \
		'time < 1.9'            'time'
}
