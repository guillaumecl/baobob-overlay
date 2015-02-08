EAPI=5
inherit cmake-utils

DESCRIPTION="Small mpd client"
HOMEPAGE="https://github.com/guillaumecl/tmpc"
SRC_URI="https://github.com/guillaumecl/tmpc/releases/download/v${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~arm ~hppa ~ppc ~sparc x86"
IUSE=""

pkg_linguas=( fr )
IUSE+=" ${pkg_linguas[@]/#/linguas_}"

RDEPEND="dev-qt/qtcore:4
	dev-qt/qtgui:4
	media-libs/libmpdclient
"
DEPEND="
	${RDEPEND}
	dev-util/cmake
"

src_configure() {
	for lingua in $(ls -1 src/*.ts | sed -e 's/.*tmpc_\(.*\)\.ts/\1/'); do
		if ! use linguas_${lingua}; then
			rm src/tmpc_${lingua}.ts || die
		fi
	done

	mycmakeargs=( -DTMPC_TRANSLATION_DIR="/usr/share/tmpc" )

	cmake-utils_src_configure
}
