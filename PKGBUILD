# Maintainer: Souptik Datta <root@souptik.dev>
pkgname='work-sess-manager'
pkgver=1.0
pkgrel=1
pkgdesc="The all in one work session manager you need!"
arch=('x86_64')
url="https://github.com/"
license=('GPL')
depends=('lolcat', 'timer-bin', 'notify-send')
makedepends=('git')
source=('work-sess-manager::git://github.com/Souptik2001/work-sess-manager.git')
md5sums=('SKIP')

pkgver() {
	cd "$pkgname"
	git describe --long --abbrev=7 | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
}

package() {
	cd "$pkgname"
	install -Dm755 ./sess.sh "$pkgdir/usr/bin/sess"
}
