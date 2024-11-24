# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit autotools linux-info flag-o-matic

DESCRIPTION="Driver for xorg-server"
KEYWORDS="*"
IUSE=" dri"
SRC_URI="https://gitlab.freedesktop.org/xorg/driver/xf86-video-tdfx/-/archive/xf86-video-tdfx-1.5.0/xf86-video-tdfx-xf86-video-tdfx-1.5.0.tar.bz2 -> xf86-video-tdfx-1.5.0-gitlab.tar.bz2"
SLOT="0"
S="$WORKDIR/${PN}-${P}"
DEPEND="
	x11-base/xorg-proto
	x11-base/xorg-server
	>=sys-devel/libtool-2.2.6a
	sys-devel/m4
	>=x11-misc/util-macros-1.18
	
	dri? ( x11-base/xorg-server[-minimal] x11-libs/libdrm )
"

RDEPEND="
	${DEPEND}x11-libs/libpciaccess
	
"

WANT_AUTOCONF="latest"
WANT_AUTOMAKE="latest"
AUTOTOOLS_AUTORECONF="1"

pkg_setup() {
	append-ldflags -Wl,-z,lazy
}
src_prepare() {
	eautoreconf || die
	default
}
src_configure() {
	XORG_CONFIGURE_OPTIONS=(
		$(use_enable dri)

	)
	econf ${XORG_CONFIGURE_OPTIONS[@]} || die
}


src_install() {
	default
	find "${D}" -type f -name '*.la' -delete || die
}