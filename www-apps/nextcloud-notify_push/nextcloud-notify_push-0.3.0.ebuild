# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"

CRATES="
addr2line-0.17.0
adler-1.0.2
ahash-0.7.6
aho-corasick-0.7.18
ansi_term-0.11.0
ansi_term-0.12.1
async-stream-0.3.2
async-stream-impl-0.3.2
async-trait-0.1.51
atoi-0.3.3
atoi-0.4.0
atty-0.2.14
autocfg-0.1.7
autocfg-1.0.1
backtrace-0.3.63
base64-0.12.3
base64-0.13.0
beef-0.5.1
bitflags-1.3.2
block-buffer-0.9.0
buf_redux-0.8.4
bumpalo-3.8.0
byteorder-1.4.3
bytes-1.1.0
cc-1.0.72
cfg-if-1.0.0
chrono-0.4.19
chunked_transfer-1.4.0
clap-2.33.3
color-eyre-0.5.11
color-spantrace-0.1.6
combine-4.6.2
cpufeatures-0.2.1
crc-2.1.0
crc-catalog-1.1.1
crc16-0.4.0
crossbeam-channel-0.5.1
crossbeam-queue-0.3.2
crossbeam-utils-0.8.5
crypto-mac-0.11.1
dashmap-4.0.2
derivative-2.2.0
digest-0.9.0
dirs-3.0.2
dirs-sys-0.3.6
dotenv-0.15.0
dtoa-0.4.8
either-1.6.1
encoding_rs-0.8.29
eyre-0.6.5
flexi_logger-0.19.6
fnv-1.0.7
form_urlencoded-1.0.1
futures-0.3.17
futures-channel-0.3.17
futures-core-0.3.17
futures-executor-0.3.17
futures-intrusive-0.4.0
futures-io-0.3.17
futures-macro-0.3.17
futures-sink-0.3.17
futures-task-0.3.17
futures-util-0.3.17
generic-array-0.14.4
getrandom-0.2.3
gimli-0.26.1
glob-0.3.0
h2-0.3.7
hashbrown-0.11.2
hashlink-0.7.0
headers-0.3.5
headers-core-0.2.0
heck-0.3.3
hermit-abi-0.1.19
hex-0.4.3
hmac-0.11.0
http-0.2.5
http-auth-basic-0.3.1
http-body-0.4.4
httparse-1.5.1
httpdate-1.0.1
hyper-0.14.14
hyper-rustls-0.22.1
idna-0.2.3
indenter-0.3.3
indexmap-1.7.0
instant-0.1.12
ipnet-2.3.1
itertools-0.10.1
itoa-0.4.8
js-sys-0.3.55
lazy_static-1.4.0
libc-0.2.107
libm-0.2.1
libsqlite3-sys-0.22.2
lock_api-0.4.5
log-0.4.14
logos-0.12.0
logos-derive-0.12.0
matchers-0.0.1
matches-0.1.9
md-5-0.9.1
memchr-2.4.1
mime-0.3.16
mime_guess-2.0.3
mini-redis-0.4.1
minimal-lexical-0.2.1
miniz_oxide-0.4.4
mio-0.7.14
miow-0.3.7
multipart-0.18.0
nextcloud-config-parser-0.4.2
nextcloud_appinfo-0.6.0
nom-7.1.0
ntapi-0.3.6
num-bigint-0.3.3
num-bigint-0.4.3
num-bigint-dig-0.7.0
num-integer-0.1.44
num-iter-0.1.42
num-traits-0.2.14
num_cpus-1.13.0
numtoa-0.1.0
object-0.27.1
once_cell-1.8.0
opaque-debug-0.3.0
owo-colors-1.3.0
parking_lot-0.11.2
parking_lot_core-0.8.5
parse-display-0.5.3
parse-display-derive-0.5.3
pem-0.8.3
percent-encoding-2.1.0
peresil-0.3.0
php-literal-parser-0.3.0
pin-project-1.0.8
pin-project-internal-1.0.8
pin-project-lite-0.2.7
pin-utils-0.1.0
pkg-config-0.3.22
ppv-lite86-0.2.15
proc-macro-error-1.0.4
proc-macro-error-attr-1.0.4
proc-macro-hack-0.5.19
proc-macro-nested-0.1.7
proc-macro2-1.0.32
quick-error-1.2.3
quote-1.0.10
rand-0.8.4
rand_chacha-0.3.1
rand_core-0.6.3
rand_hc-0.3.1
redis-0.21.4
redox_syscall-0.2.10
redox_termios-0.1.2
redox_users-0.4.0
regex-1.5.4
regex-automata-0.1.10
regex-syntax-0.6.25
remove_dir_all-0.5.3
reqwest-0.11.6
rfc7239-0.1.0
ring-0.16.20
rsa-0.4.1
rustc-demangle-0.1.21
rustls-0.19.1
rustls-0.20.0
rustversion-1.0.5
ryu-1.0.5
safemem-0.3.3
scoped-tls-1.0.0
scopeguard-1.1.0
sct-0.6.1
sct-0.7.0
semver-0.10.0
semver-parser-0.7.0
serde-1.0.130
serde_derive-1.0.130
serde_json-1.0.69
serde_urlencoded-0.7.0
sha-1-0.9.8
sha1-0.6.0
sha2-0.9.8
sharded-slab-0.1.4
signal-hook-registry-1.4.0
simple_asn1-0.5.4
slab-0.4.5
smallvec-1.7.0
socket2-0.4.2
source-span-2.2.1
spin-0.5.2
sqlformat-0.1.8
sqlx-0.5.9
sqlx-core-0.5.9
sqlx-macros-0.5.9
sqlx-rt-0.5.9
stringprep-0.1.2
strsim-0.8.0
structmeta-0.1.4
structmeta-derive-0.1.4
structopt-0.3.25
structopt-derive-0.4.18
subtle-2.4.1
sxd-document-0.3.2
sxd-xpath-0.4.2
syn-1.0.81
synstructure-0.12.6
tempfile-3.2.0
termion-1.5.6
textwrap-0.11.0
thiserror-1.0.30
thiserror-impl-1.0.30
thread_local-1.1.3
time-0.3.4
tinyvec-1.5.1
tinyvec_macros-0.1.0
tokio-1.13.0
tokio-macros-1.5.1
tokio-rustls-0.22.0
tokio-stream-0.1.8
tokio-tungstenite-0.15.0
tokio-util-0.6.9
tower-service-0.3.1
tracing-0.1.29
tracing-attributes-0.1.18
tracing-core-0.1.21
tracing-error-0.1.2
tracing-futures-0.2.5
tracing-log-0.1.2
tracing-serde-0.1.2
tracing-subscriber-0.2.25
try-lock-0.2.3
tungstenite-0.14.0
tungstenite-0.16.0
twoway-0.1.8
typed-arena-1.7.0
typenum-1.14.0
uncased-0.9.6
unicase-2.6.0
unicode-bidi-0.3.7
unicode-normalization-0.1.19
unicode-segmentation-1.8.0
unicode-width-0.1.9
unicode-xid-0.2.2
unicode_categories-0.1.1
untrusted-0.7.1
ureq-2.3.0
url-2.2.2
utf-8-0.7.6
utf8-ranges-1.0.4
vcpkg-0.2.15
vec_map-0.8.2
version_check-0.9.3
want-0.3.0
warp-0.3.2
warp-real-ip-0.2.0
wasi-0.10.2+wasi-snapshot-preview1
wasm-bindgen-0.2.78
wasm-bindgen-backend-0.2.78
wasm-bindgen-futures-0.4.28
wasm-bindgen-macro-0.2.78
wasm-bindgen-macro-support-0.2.78
wasm-bindgen-shared-0.2.78
web-sys-0.3.55
webpki-0.21.4
webpki-0.22.0
webpki-roots-0.21.1
webpki-roots-0.22.1
whoami-1.2.0
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
winreg-0.7.0
xpath_reader-0.5.3
zeroize-1.3.0
zeroize_derive-1.2.2
"

inherit cargo systemd

DESCRIPTION="Push daemon for Nextcloud clients"
HOMEPAGE="https://github.com/nextcloud/notify_push"
SRC_URI="https://github.com/nextcloud/notify_push/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
LICENSE="MIT Apache-2.0 BSD GPL-3 ISC MPL-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="test"

RDEPEND="acct-group/nobody
	acct-user/nobody"

S="${WORKDIR}/notify_push-${PV}"

QA_FLAGS_IGNORED="usr/bin/${PN}"

src_install() {
	cargo_src_install
	einstalldocs

	# default name is too generic
	mv "${ED}/usr/bin/notify_push" "${ED}/usr/bin/${PN}" || die

	newconfd "${FILESDIR}"/${PN}-r1.confd ${PN}
	newinitd "${FILESDIR}"/${PN}-r1.init ${PN}
	systemd_newunit "${FILESDIR}"/${PN}.service ${PN}.service

	# restrict access because conf.d entry could contain
	# database credentials
	fperms 0640 /etc/conf.d/${PN}
}
