# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils


DESCRIPTION="Meta loader for Vulkan API"
HOMEPAGE="https://github.com/zeux/volk"
SRC_URI="https://github.com/zeux/volk/tarball/466085407d5d2f50583fd663c1d65f93a7709d3e -> volk-1.3.290-4660854.tar.gz"
KEYWORDS="*"

LICENSE="MIT"
SLOT="0"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="~media-libs/vulkan-loader-${PV}:="
DEPEND="${RDEPEND}
	~dev-util/vulkan-headers-${PV}
"

src_unpack() {
	unpack "${A}"
	mv "${WORKDIR}"/zeux-volk-* "${S}" || die
}

src_configure() {
	local mycmakeargs=(
		-DVOLK_INSTALL=on
	)
	cmake-utils_src_configure
}