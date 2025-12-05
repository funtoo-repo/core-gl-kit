# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

DESCRIPTION="NVIDIA container runtime toolkit"
HOMEPAGE="https://github.com/NVIDIA/nvidia-container-toolkit"

EGO_SUM=(
	"github.com/!n!v!i!d!i!a/go-nvlib v0.8.1"
	"github.com/!n!v!i!d!i!a/go-nvlib v0.8.1/go.mod"
	"github.com/!n!v!i!d!i!a/go-nvml v0.13.0-1"
	"github.com/!n!v!i!d!i!a/go-nvml v0.13.0-1/go.mod"
	"github.com/blang/semver/v4 v4.0.0"
	"github.com/blang/semver/v4 v4.0.0/go.mod"
	"github.com/creack/pty v1.1.9/go.mod"
	"github.com/cyphar/filepath-securejoin v0.5.1"
	"github.com/cyphar/filepath-securejoin v0.5.1/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/fsnotify/fsnotify v1.7.0"
	"github.com/fsnotify/fsnotify v1.7.0/go.mod"
	"github.com/google/go-cmp v0.5.9/go.mod"
	"github.com/google/go-cmp v0.6.0"
	"github.com/google/go-cmp v0.6.0/go.mod"
	"github.com/google/uuid v1.6.0"
	"github.com/google/uuid v1.6.0/go.mod"
	"github.com/hashicorp/errwrap v1.1.0"
	"github.com/hashicorp/errwrap v1.1.0/go.mod"
	"github.com/hashicorp/go-multierror v1.1.1"
	"github.com/hashicorp/go-multierror v1.1.1/go.mod"
	"github.com/kr/pretty v0.2.1/go.mod"
	"github.com/kr/pretty v0.3.1"
	"github.com/kr/pretty v0.3.1/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/kr/text v0.2.0"
	"github.com/kr/text v0.2.0/go.mod"
	"github.com/moby/sys/capability v0.4.0"
	"github.com/moby/sys/capability v0.4.0/go.mod"
	"github.com/moby/sys/reexec v0.1.0"
	"github.com/moby/sys/reexec v0.1.0/go.mod"
	"github.com/moby/sys/symlink v0.3.0"
	"github.com/moby/sys/symlink v0.3.0/go.mod"
	"github.com/opencontainers/runc v1.3.3"
	"github.com/opencontainers/runc v1.3.3/go.mod"
	"github.com/opencontainers/runtime-spec v1.3.0"
	"github.com/opencontainers/runtime-spec v1.3.0/go.mod"
	"github.com/opencontainers/runtime-tools v0.9.1-0.20251114084447-edf4cb3d2116"
	"github.com/opencontainers/runtime-tools v0.9.1-0.20251114084447-edf4cb3d2116/go.mod"
	"github.com/opencontainers/selinux v1.12.0"
	"github.com/opencontainers/selinux v1.12.0/go.mod"
	"github.com/pelletier/go-toml v1.9.5"
	"github.com/pelletier/go-toml v1.9.5/go.mod"
	"github.com/pkg/diff v0.0.0-20210226163009-20ebb0f2a09e/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/rogpeppe/go-internal v1.9.0/go.mod"
	"github.com/rogpeppe/go-internal v1.11.0"
	"github.com/rogpeppe/go-internal v1.11.0/go.mod"
	"github.com/sirupsen/logrus v1.9.3"
	"github.com/sirupsen/logrus v1.9.3/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/testify v1.7.0/go.mod"
	"github.com/stretchr/testify v1.11.1"
	"github.com/stretchr/testify v1.11.1/go.mod"
	"github.com/urfave/cli-altsrc/v3 v3.1.0"
	"github.com/urfave/cli-altsrc/v3 v3.1.0/go.mod"
	"github.com/urfave/cli/v3 v3.4.1"
	"github.com/urfave/cli/v3 v3.4.1/go.mod"
	"github.com/xeipuuv/gojsonpointer v0.0.0-20190905194746-02993c407bfb"
	"github.com/xeipuuv/gojsonpointer v0.0.0-20190905194746-02993c407bfb/go.mod"
	"github.com/xeipuuv/gojsonreference v0.0.0-20180127040603-bd5ef7bd5415"
	"github.com/xeipuuv/gojsonreference v0.0.0-20180127040603-bd5ef7bd5415/go.mod"
	"github.com/xeipuuv/gojsonschema v1.2.0"
	"github.com/xeipuuv/gojsonschema v1.2.0/go.mod"
	"golang.org/x/mod v0.29.0"
	"golang.org/x/mod v0.29.0/go.mod"
	"golang.org/x/sys v0.0.0-20220715151400-c0bba94af5f8/go.mod"
	"golang.org/x/sys v0.37.0"
	"golang.org/x/sys v0.37.0/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
	"gopkg.in/yaml.v3 v3.0.1"
	"gopkg.in/yaml.v3 v3.0.1/go.mod"
	"sigs.k8s.io/yaml v1.4.0"
	"sigs.k8s.io/yaml v1.4.0/go.mod"
	"tags.cncf.io/container-device-interface v1.0.2-0.20251114135136-1b24d969689f"
	"tags.cncf.io/container-device-interface v1.0.2-0.20251114135136-1b24d969689f/go.mod"
	"tags.cncf.io/container-device-interface/specs-go v1.0.0"
	"tags.cncf.io/container-device-interface/specs-go v1.0.0/go.mod"
)

go-module_set_globals

SRC_URI="https://github.com/NVIDIA/nvidia-container-toolkit/tarball/eefc6e588e1ce5a802d4489c078ec54679439fe2 -> nvidia-container-toolkit-1.18.1-eefc6e5.tar.gz
https://direct-github.funmore.org/04/ad/27/04ad27a487245b26ffe15d978e4af15c626e401c85d4ff37635c20866c7a6668b5e1d15915f5dabd3351b91eb297979443217991154d5104f5436200dce05062 -> nvidia-container-toolkit-1.18.1-funtoo-go-bundle-66f8b5fe4ecdcedbae1abaf3d47c40918d614df394868eb05a44886d87d548c7d06dbba939147b13c784a1a395b1ee5e1601986ef6e45a39fd1f885f431b41e4.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""
S="${WORKDIR}/NVIDIA-nvidia-container-toolkit-eefc6e5"

RDEPEND="app-emulation/libnvidia-container"

DEPEND="${RDEPEND}"

BDEPEND="dev-lang/go"

src_compile() {
	emake binaries || die
}

src_install() {
	dobin "nvidia-container-runtime"
	dobin "nvidia-container-runtime-hook"
	dobin "nvidia-container-runtime.cdi"
	dobin "nvidia-container-runtime.legacy"
	dobin "nvidia-ctk"
	into "/usr/bin"
	insinto "/etc/nvidia-container-runtime"
	doins "${FILESDIR}/config.toml"
}

pkg_postinst() {
	elog "Your docker service must restart after install this package."
	elog "OpenRC: sudo rc-service docker restart"
	elog "You may need to edit your /etc/nvidia-container-runtime/config.toml"
	elog "file before running ${PN} for the first time."
	elog "For details, please see the NVIDIA docker manual page."
}
