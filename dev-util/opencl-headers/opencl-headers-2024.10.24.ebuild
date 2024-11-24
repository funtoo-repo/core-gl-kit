# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="Unified C language headers for the OpenCL API"
HOMEPAGE="https://github.com/KhronosGroup/OpenCL-Headers"
SRC_URI="https://github.com/KhronosGroup/OpenCL-Headers/tarball/4ea6df132107e3b4b9407f903204b5522fdffcd6 -> OpenCL-Headers-2024.10.24-4ea6df1.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"

src_unpack() {
	unpack "${A}"
	mv "${WORKDIR}"/KhronosGroup-OpenCL-Headers-* "${S}" || die
}