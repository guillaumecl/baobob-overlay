EAPI=5
inherit eutils git-2

DESCRIPTION="Simple tool that can turn a webcam LED on or off."
HOMEPAGE="https://github.com/guillaumecl/webcam_led"
EGIT_REPO_URI="git://github.com/guillaumecl/webcam_led.git"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~hppa ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="media-libs/libv4l"
DEPEND="
	${RDEPEND}
	dev-util/cmake
"
