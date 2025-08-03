# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit linux-info flag-o-matic
inherit meson

DESCRIPTION="Driver for xorg-server"
KEYWORDS="*"
IUSE=" "
SRC_URI="https://gitlab.freedesktop.org/xorg/driver/xf86-video-amdgpu/-/archive/xf86-video-amdgpu-25.0.0/xf86-video-amdgpu-xf86-video-amdgpu-25.0.0.tar.bz2 -> xf86-video-amdgpu-25.0.0-gitlab.tar.bz2"
SLOT="0"
S="$WORKDIR/${PN}-${P}"
DEPEND="
	x11-base/xorg-proto
	x11-base/xorg-server
	dev-util/meson
	sys-devel/ninja
	>=x11-misc/util-macros-1.18
	x11-base/xorg-server[-minimal]
	x11-libs/libdrm
"

RDEPEND="
	${DEPEND}x11-libs/libpciaccess
	x11-libs/libdrm[video_cards_amdgpu]
x11-base/xorg-server[glamor(+),-minimal]

"
MESON_AQA="enabled"

pkg_setup() {
	append-ldflags -Wl,-z,lazy
}

src_prepare() {
	# Handling Meson specific prepare steps
	default
	{
		:
	} || die
}

src_configure() {
	meson_src_configure
}

src_install() {
	meson_src_install
}