# Maintainer: AIT EL HAJ Abdelouadoud <aitelhaj.abdelouadoud.reachme@proton.me>
pkgname=hyprcast
pkgver=1.0
pkgrel=1
pkgdesc="A Wayland-compatible script for recording video and audio with optional webcam feed"
arch=('x86_64')
url="https://aehabdelouadoud.github.io"
license=('MIT')
depends=('wf-recorder' 'ffmpeg' 'wayland' 'weston' 'pulseaudio')  # Add Wayland-related dependencies
makedepends=('git')
source=(
  "git+https://github.com/aehabdelouadoud/hyprcast.git"
  "man/hyprcast.1"
  "bin/hyprcast"
)
sha256sums=('9be67afec8601efd0787c2509a150157a112e6b7a7f3a34f5fa0ffaa05e206c2') # You may use a hash here if you're not fetching directly from a git repository

package() {
  # Install the hyprcast script to /usr/bin
  install -Dm755 "$srcdir/bin/hyprcast" "$pkgdir/usr/bin/hyprcast"

  # Install the man page
  install -Dm644 "$srcdir/man/hyprcast.1" "$pkgdir/usr/local/man/man1/hyprcast.1"

  # Optionally, install configuration files, models, etc.
  # install -Dm644 "$srcdir/config/hyprcast.conf" "$pkgdir/usr/local/etc/hyprcast/hyprcast.conf"
}

