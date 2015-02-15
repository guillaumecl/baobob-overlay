EAPI=5
inherit cmake-utils

DESCRIPTION="Mail notification in the system tray or using a webcam led."
HOMEPAGE="https://github.com/guillaumecl/qimaptray"
SRC_URI="https://github.com/guillaumecl/qimaptray/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~arm ~hppa ~ppc ~sparc x86"
IUSE="-webcam -network"

RDEPEND="dev-qt/qtcore:4
	dev-qt/qtgui:4
	dev-libs/openssl
	webcam? ( media-libs/libv4l )
	network? ( dev-libs/libnl )
"
DEPEND="
	${RDEPEND}
	dev-util/cmake
	webcam? ( media-libs/webcam_led )
"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_enable webcam WEBCAM)
		$(cmake-utils_use_enable network LIBNL)
	)

	cmake-utils_src_configure
}
