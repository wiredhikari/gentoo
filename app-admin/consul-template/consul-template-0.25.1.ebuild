# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module systemd

DESCRIPTION="Generic template rendering and notifications with Consul"
HOMEPAGE="https://github.com/hashicorp/consul-template"

EGO_SUM=(
"cloud.google.com/go v0.26.0/go.mod"
"github.com/BurntSushi/toml v0.3.1"
"github.com/BurntSushi/toml v0.3.1/go.mod"
"github.com/DataDog/datadog-go v2.2.0+incompatible/go.mod"
"github.com/armon/circbuf v0.0.0-20150827004946-bbbad097214e/go.mod"
"github.com/armon/go-metrics v0.0.0-20180917152333-f0300d1749da"
"github.com/armon/go-metrics v0.0.0-20180917152333-f0300d1749da/go.mod"
"github.com/armon/go-metrics v0.0.0-20190430140413-ec5e00d3c878"
"github.com/armon/go-metrics v0.0.0-20190430140413-ec5e00d3c878/go.mod"
"github.com/armon/go-radix v0.0.0-20180808171621-7fddfc383310"
"github.com/armon/go-radix v0.0.0-20180808171621-7fddfc383310/go.mod"
"github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973/go.mod"
"github.com/bgentry/speakeasy v0.1.0/go.mod"
"github.com/circonus-labs/circonus-gometrics v2.3.1+incompatible/go.mod"
"github.com/circonus-labs/circonusllhist v0.1.3/go.mod"
"github.com/client9/misspell v0.3.4/go.mod"
"github.com/davecgh/go-spew v1.1.0/go.mod"
"github.com/davecgh/go-spew v1.1.1"
"github.com/davecgh/go-spew v1.1.1/go.mod"
"github.com/fatih/color v1.7.0/go.mod"
"github.com/fatih/color v1.9.0"
"github.com/fatih/color v1.9.0/go.mod"
"github.com/fatih/structs v1.1.0/go.mod"
"github.com/frankban/quicktest v1.4.0"
"github.com/frankban/quicktest v1.4.0/go.mod"
"github.com/go-ldap/ldap v3.0.2+incompatible/go.mod"
"github.com/go-test/deep v1.0.2-0.20181118220953-042da051cf31/go.mod"
"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b/go.mod"
"github.com/golang/mock v1.1.1/go.mod"
"github.com/golang/protobuf v1.2.0/go.mod"
"github.com/golang/protobuf v1.3.1/go.mod"
"github.com/golang/snappy v0.0.1"
"github.com/golang/snappy v0.0.1/go.mod"
"github.com/google/btree v0.0.0-20180813153112-4030bb1f1f0c"
"github.com/google/btree v0.0.0-20180813153112-4030bb1f1f0c/go.mod"
"github.com/google/btree v1.0.0"
"github.com/google/btree v1.0.0/go.mod"
"github.com/google/go-cmp v0.2.0/go.mod"
"github.com/google/go-cmp v0.3.0"
"github.com/google/go-cmp v0.3.0/go.mod"
"github.com/hashicorp/consul/api v1.4.0"
"github.com/hashicorp/consul/api v1.4.0/go.mod"
"github.com/hashicorp/consul/sdk v0.4.0"
"github.com/hashicorp/consul/sdk v0.4.0/go.mod"
"github.com/hashicorp/errwrap v1.0.0"
"github.com/hashicorp/errwrap v1.0.0/go.mod"
"github.com/hashicorp/go-cleanhttp v0.5.0/go.mod"
"github.com/hashicorp/go-cleanhttp v0.5.1"
"github.com/hashicorp/go-cleanhttp v0.5.1/go.mod"
"github.com/hashicorp/go-gatedio v0.5.0"
"github.com/hashicorp/go-gatedio v0.5.0/go.mod"
"github.com/hashicorp/go-hclog v0.0.0-20180709165350-ff2cf002a8dd/go.mod"
"github.com/hashicorp/go-hclog v0.8.0/go.mod"
"github.com/hashicorp/go-hclog v0.12.0"
"github.com/hashicorp/go-hclog v0.12.0/go.mod"
"github.com/hashicorp/go-immutable-radix v1.0.0"
"github.com/hashicorp/go-immutable-radix v1.0.0/go.mod"
"github.com/hashicorp/go-immutable-radix v1.1.0"
"github.com/hashicorp/go-immutable-radix v1.1.0/go.mod"
"github.com/hashicorp/go-msgpack v0.5.3/go.mod"
"github.com/hashicorp/go-msgpack v0.5.5"
"github.com/hashicorp/go-msgpack v0.5.5/go.mod"
"github.com/hashicorp/go-multierror v1.0.0"
"github.com/hashicorp/go-multierror v1.0.0/go.mod"
"github.com/hashicorp/go-plugin v1.0.1/go.mod"
"github.com/hashicorp/go-retryablehttp v0.5.3/go.mod"
"github.com/hashicorp/go-retryablehttp v0.5.4"
"github.com/hashicorp/go-retryablehttp v0.5.4/go.mod"
"github.com/hashicorp/go-rootcerts v1.0.1"
"github.com/hashicorp/go-rootcerts v1.0.1/go.mod"
"github.com/hashicorp/go-rootcerts v1.0.2"
"github.com/hashicorp/go-rootcerts v1.0.2/go.mod"
"github.com/hashicorp/go-sockaddr v1.0.0/go.mod"
"github.com/hashicorp/go-sockaddr v1.0.2"
"github.com/hashicorp/go-sockaddr v1.0.2/go.mod"
"github.com/hashicorp/go-syslog v1.0.0"
"github.com/hashicorp/go-syslog v1.0.0/go.mod"
"github.com/hashicorp/go-uuid v1.0.0/go.mod"
"github.com/hashicorp/go-uuid v1.0.1"
"github.com/hashicorp/go-uuid v1.0.1/go.mod"
"github.com/hashicorp/go-version v1.1.0/go.mod"
"github.com/hashicorp/go.net v0.0.1/go.mod"
"github.com/hashicorp/golang-lru v0.5.0/go.mod"
"github.com/hashicorp/golang-lru v0.5.1"
"github.com/hashicorp/golang-lru v0.5.1/go.mod"
"github.com/hashicorp/golang-lru v0.5.3"
"github.com/hashicorp/golang-lru v0.5.3/go.mod"
"github.com/hashicorp/hcl v1.0.0"
"github.com/hashicorp/hcl v1.0.0/go.mod"
"github.com/hashicorp/logutils v1.0.0"
"github.com/hashicorp/logutils v1.0.0/go.mod"
"github.com/hashicorp/mdns v1.0.0/go.mod"
"github.com/hashicorp/memberlist v0.1.3/go.mod"
"github.com/hashicorp/memberlist v0.1.4"
"github.com/hashicorp/memberlist v0.1.4/go.mod"
"github.com/hashicorp/serf v0.8.2/go.mod"
"github.com/hashicorp/serf v0.8.3"
"github.com/hashicorp/serf v0.8.3/go.mod"
"github.com/hashicorp/vault/api v1.0.5-0.20190730042357-746c0b111519"
"github.com/hashicorp/vault/api v1.0.5-0.20190730042357-746c0b111519/go.mod"
"github.com/hashicorp/vault/sdk v0.1.14-0.20190730042320-0dc007d98cc8"
"github.com/hashicorp/vault/sdk v0.1.14-0.20190730042320-0dc007d98cc8/go.mod"
"github.com/hashicorp/yamux v0.0.0-20180604194846-3520598351bb/go.mod"
"github.com/hashicorp/yamux v0.0.0-20181012175058-2f1d1f20f75d/go.mod"
"github.com/kr/pretty v0.1.0"
"github.com/kr/pretty v0.1.0/go.mod"
"github.com/kr/pretty v0.2.0"
"github.com/kr/pretty v0.2.0/go.mod"
"github.com/kr/pty v1.1.1/go.mod"
"github.com/kr/text v0.1.0"
"github.com/kr/text v0.1.0/go.mod"
"github.com/mattn/go-colorable v0.0.9/go.mod"
"github.com/mattn/go-colorable v0.1.4"
"github.com/mattn/go-colorable v0.1.4/go.mod"
"github.com/mattn/go-isatty v0.0.3/go.mod"
"github.com/mattn/go-isatty v0.0.8/go.mod"
"github.com/mattn/go-isatty v0.0.10/go.mod"
"github.com/mattn/go-isatty v0.0.11/go.mod"
"github.com/mattn/go-isatty v0.0.12"
"github.com/mattn/go-isatty v0.0.12/go.mod"
"github.com/mattn/go-shellwords v1.0.5"
"github.com/mattn/go-shellwords v1.0.5/go.mod"
"github.com/matttproud/golang_protobuf_extensions v1.0.1/go.mod"
"github.com/miekg/dns v1.0.14"
"github.com/miekg/dns v1.0.14/go.mod"
"github.com/miekg/dns v1.1.15"
"github.com/miekg/dns v1.1.15/go.mod"
"github.com/mitchellh/cli v1.0.0/go.mod"
"github.com/mitchellh/copystructure v1.0.0/go.mod"
"github.com/mitchellh/go-homedir v1.1.0"
"github.com/mitchellh/go-homedir v1.1.0/go.mod"
"github.com/mitchellh/go-testing-interface v0.0.0-20171004221916-a61a99592b77/go.mod"
"github.com/mitchellh/go-testing-interface v1.0.0"
"github.com/mitchellh/go-testing-interface v1.0.0/go.mod"
"github.com/mitchellh/go-wordwrap v1.0.0/go.mod"
"github.com/mitchellh/gox v0.4.0/go.mod"
"github.com/mitchellh/hashstructure v1.0.0"
"github.com/mitchellh/hashstructure v1.0.0/go.mod"
"github.com/mitchellh/iochan v1.0.0/go.mod"
"github.com/mitchellh/mapstructure v0.0.0-20160808181253-ca63d7c062ee/go.mod"
"github.com/mitchellh/mapstructure v1.1.2"
"github.com/mitchellh/mapstructure v1.1.2/go.mod"
"github.com/mitchellh/reflectwalk v1.0.0/go.mod"
"github.com/oklog/run v1.0.0/go.mod"
"github.com/pascaldekloe/goe v0.0.0-20180627143212-57f6aae5913c/go.mod"
"github.com/pascaldekloe/goe v0.1.0"
"github.com/pascaldekloe/goe v0.1.0/go.mod"
"github.com/pierrec/lz4 v2.0.5+incompatible"
"github.com/pierrec/lz4 v2.0.5+incompatible/go.mod"
"github.com/pierrec/lz4 v2.2.5+incompatible"
"github.com/pierrec/lz4 v2.2.5+incompatible/go.mod"
"github.com/pkg/errors v0.8.1"
"github.com/pkg/errors v0.8.1/go.mod"
"github.com/pmezard/go-difflib v1.0.0"
"github.com/pmezard/go-difflib v1.0.0/go.mod"
"github.com/posener/complete v1.1.1/go.mod"
"github.com/prometheus/client_golang v0.9.2/go.mod"
"github.com/prometheus/client_model v0.0.0-20180712105110-5c3871d89910/go.mod"
"github.com/prometheus/common v0.0.0-20181126121408-4724e9255275/go.mod"
"github.com/prometheus/procfs v0.0.0-20181204211112-1dc9a6cbc91a/go.mod"
"github.com/ryanuber/columnize v0.0.0-20160712163229-9b3edd62028f/go.mod"
"github.com/ryanuber/columnize v2.1.0+incompatible/go.mod"
"github.com/ryanuber/go-glob v1.0.0"
"github.com/ryanuber/go-glob v1.0.0/go.mod"
"github.com/sean-/seed v0.0.0-20170313163322-e2103e2c3529"
"github.com/sean-/seed v0.0.0-20170313163322-e2103e2c3529/go.mod"
"github.com/stretchr/objx v0.1.0/go.mod"
"github.com/stretchr/testify v1.2.2/go.mod"
"github.com/stretchr/testify v1.3.0"
"github.com/stretchr/testify v1.3.0/go.mod"
"github.com/stretchr/testify v1.4.0"
"github.com/stretchr/testify v1.4.0/go.mod"
"github.com/tv42/httpunix v0.0.0-20150427012821-b75d8614f926/go.mod"
"golang.org/x/crypto v0.0.0-20181029021203-45a5f77698d3/go.mod"
"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
"golang.org/x/crypto v0.0.0-20190701094942-4def268fd1a4"
"golang.org/x/crypto v0.0.0-20190701094942-4def268fd1a4/go.mod"
"golang.org/x/exp v0.0.0-20190121172915-509febef88a4/go.mod"
"golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3/go.mod"
"golang.org/x/lint v0.0.0-20190227174305-5b3e6a55c961/go.mod"
"golang.org/x/lint v0.0.0-20190313153728-d0100b6bd8b3/go.mod"
"golang.org/x/net v0.0.0-20180724234803-3673e40ba225/go.mod"
"golang.org/x/net v0.0.0-20180826012351-8a410e7b638d/go.mod"
"golang.org/x/net v0.0.0-20181023162649-9b4f9f5ad519/go.mod"
"golang.org/x/net v0.0.0-20181201002055-351d144fa1fc/go.mod"
"golang.org/x/net v0.0.0-20190213061140-3a22650c66bd/go.mod"
"golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3"
"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
"golang.org/x/net v0.0.0-20190620200207-3b0461eec859"
"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
"golang.org/x/net v0.0.0-20190724013045-ca1201d0de80"
"golang.org/x/net v0.0.0-20190724013045-ca1201d0de80/go.mod"
"golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be/go.mod"
"golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod"
"golang.org/x/sync v0.0.0-20181108010431-42b317875d0f/go.mod"
"golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4"
"golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4/go.mod"
"golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6"
"golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6/go.mod"
"golang.org/x/sync v0.0.0-20190423024810-112230192c58"
"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
"golang.org/x/sys v0.0.0-20180823144017-11551d06cbcc/go.mod"
"golang.org/x/sys v0.0.0-20180830151530-49385e6e1522/go.mod"
"golang.org/x/sys v0.0.0-20181026203630-95b1ffbd15a5/go.mod"
"golang.org/x/sys v0.0.0-20190129075346-302c3dd5f1cc/go.mod"
"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
"golang.org/x/sys v0.0.0-20190222072716-a9d3bda3a223/go.mod"
"golang.org/x/sys v0.0.0-20190403152447-81d4e9dc473e"
"golang.org/x/sys v0.0.0-20190403152447-81d4e9dc473e/go.mod"
"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
"golang.org/x/sys v0.0.0-20191008105621-543471e840be/go.mod"
"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod"
"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod"
"golang.org/x/sys v0.0.0-20200124204421-9fbb57f87de9"
"golang.org/x/sys v0.0.0-20200124204421-9fbb57f87de9/go.mod"
"golang.org/x/text v0.3.0"
"golang.org/x/text v0.3.0/go.mod"
"golang.org/x/text v0.3.1-0.20181227161524-e6919f6577db"
"golang.org/x/text v0.3.1-0.20181227161524-e6919f6577db/go.mod"
"golang.org/x/text v0.3.2"
"golang.org/x/text v0.3.2/go.mod"
"golang.org/x/time v0.0.0-20190308202827-9d24e82272b4"
"golang.org/x/time v0.0.0-20190308202827-9d24e82272b4/go.mod"
"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
"golang.org/x/tools v0.0.0-20190114222345-bf090417da8b/go.mod"
"golang.org/x/tools v0.0.0-20190226205152-f727befe758c/go.mod"
"golang.org/x/tools v0.0.0-20190311212946-11955173bddd/go.mod"
"golang.org/x/tools v0.0.0-20190524140312-2c0ae7006135/go.mod"
"google.golang.org/appengine v1.1.0/go.mod"
"google.golang.org/appengine v1.4.0/go.mod"
"google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8/go.mod"
"google.golang.org/genproto v0.0.0-20190404172233-64821d5d2107/go.mod"
"google.golang.org/grpc v1.14.0/go.mod"
"google.golang.org/grpc v1.19.0/go.mod"
"google.golang.org/grpc v1.22.0/go.mod"
"gopkg.in/asn1-ber.v1 v1.0.0-20181015200546-f715ec2f112d/go.mod"
"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15"
"gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15/go.mod"
"gopkg.in/square/go-jose.v2 v2.3.1"
"gopkg.in/square/go-jose.v2 v2.3.1/go.mod"
"gopkg.in/yaml.v2 v2.2.2"
"gopkg.in/yaml.v2 v2.2.2/go.mod"
"gopkg.in/yaml.v2 v2.2.8"
"gopkg.in/yaml.v2 v2.2.8/go.mod"
"honnef.co/go/tools v0.0.0-20190102054323-c2f93a96b099/go.mod"
"honnef.co/go/tools v0.0.0-20190523083050-ea95bdfd59fc/go.mod"
	)
go-module_set_globals
SRC_URI="https://github.com/hashicorp/consul-template/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="MPL-2.0 Apache-2.0 BSD BSD-2 ISC MIT WTFPL-2"
SLOT="0"
KEYWORDS="~amd64"

COMMON_DEPEND="
	acct-group/consul-template
	acct-user/consul-template"

DEPEND="${COMMON_DEPEND}"
RDEPEND="${COMMON_DEPEND}"

# TODO: debug test failures
RESTRICT="test"

src_prepare() {
	default
	# remove -s and -w from the linker flags
	sed \
		-e '/-s \\/d' \
		-e '/-w \\/d' \
		-i Makefile || die
}

src_compile() {
	emake GOBIN="${S}"/bin dev
}

src_test() {
	emake GOBIN="${S}"/bin test
}

src_install() {
	dobin bin/${PN}
	dodoc CHANGELOG.md README.md

	newinitd "${FILESDIR}/${PN}.initd" "${PN}"
	newconfd "${FILESDIR}/${PN}.confd" "${PN}"
	insinto /etc/logrotate.d
	newins "${FILESDIR}/${PN}.logrotated" "${PN}"
	systemd_dounit "${FILESDIR}/${PN}.service"

	keepdir /etc/${PN}.d

	keepdir /var/log/${PN}
	fowners ${PN}:${PN} /var/log/${PN}
}
