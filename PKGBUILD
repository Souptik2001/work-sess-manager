# Maintainer: Souptik Datta <root@souptik.dev>
pkgname='work-sess-manager'
pkgver=1
pkgrel=1
pkgdesc="The all in one work session manager you need!"
arch=('x86_64')
url="https://github.com/"
license=('GPL')
depends=('lolcat' 'timer-bin')
makedepends=('git')
source=('work-sess-manager::git+https://github.com/Souptik2001/work-sess-manager.git')
md5sums=('SKIP')

pkgver() {
	cd "$pkgname"
  ( set -o pipefail
    git describe --long --abbrev=7 2>/dev/null | sed 's/\([^-]*-g\)/r\1/;s/-/./g' ||
    printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short=7 HEAD)"
  )
}

package() {
	cd "$pkgname"
	install -Dm755 ./sess.sh "$pkgdir/usr/bin/sess"
}