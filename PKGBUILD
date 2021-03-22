# Maintainer: Benjamin Stürz <benni@stuerz.xyz>
pkgname=mkslideshow
pkgver=1.0
pkgrel=1
pkgdesc="A small tool for making simple slide-shows"
arch=('any')
url="https://github.com/Benni3D/mkslideshow.git"
license=('GPLv2')
depends=('ffmpeg')
optdepends=('zenity: needed by mkslideshow_gui')
source=("https://github.com/Benni3D/mkslideshow/archive/v${pkgver}.tar.gz")
md5sums=('76f093c066cc313567b327f94c9588e6')

package() {
   cd "${srcdir}/${pkgname}-v${pkgver}"
   install -dm755 "${pkgdir}/usr/share/licenses/${pkgname}"
   install -dm644 LICENSE "${pkgdir}/usr/share/${pkgname}/LICENSE"
   make DESTDIR="${pkdir}" install
}
