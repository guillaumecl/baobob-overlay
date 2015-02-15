EAPI=5
inherit eutils

DESCRIPTION="Simple tool that can turn a webcam LED on or off."
HOMEPAGE="https://github.com/guillaumecl/webcam_led"
SRC_URI="https://github.com/guillaumecl/webcam_led/archive/v${PV}.tar.gz -> ${PV}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="amd64 ~arm ~hppa ~ppc ~sparc x86"
IUSE=""

RDEPEND="media-libs/libv4l"
DEPEND="${RDEPEND}"
