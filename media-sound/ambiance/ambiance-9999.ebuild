EAPI=5
inherit eutils git-2

DESCRIPTION="Create a working atmosphere by placing various sounds in 3D."
HOMEPAGE="https://github.com/guillaumecl/ambiance"
EGIT_REPO_URI="git://github.com/guillaumecl/ambiance.git"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~hppa ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="
	media-libs/openal
	media-libs/libsndfile
	dev-libs/libxdg-basedir
"
DEPEND="${RDEPEND}"
