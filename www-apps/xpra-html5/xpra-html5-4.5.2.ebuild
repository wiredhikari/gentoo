# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8,9,10} )
inherit python-any-r1

DESCRIPTION="HTML5 client to connect to any xpra server"
HOMEPAGE="https://xpra.org/"
SRC_URI="https://github.com/Xpra-org/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="brotli +gzip minify"

BDEPEND="
	${PYTHON_DEPS}
	brotli? ( app-arch/brotli )
	minify? ( dev-util/uglifyjs )
"

src_configure() {
	cat <<EOF > vcs-info || die
BRANCH=gentoo
REVISION=${PR#r}
LOCAL_MODIFICATIONS=0
EOF
}

src_install() {
	"${PYTHON}" <<EOF || die
import setup
setup.set_version("${PV}")
setup.install_html5(
	"${ED}/usr/share/xpra/www",
	"$(usex minify uglifyjs copy)",
	gzip=$(usex gzip True False),
	brotli=$(usex brotli True False),
	configuration_files=["default-settings.txt"]
)
EOF

	insinto /etc/xpra/html5-client
	doins html5/default-settings.txt
	dosym ../../../../etc/xpra/html5-client/default-settings.txt /usr/share/xpra/www/default-settings.txt
}
