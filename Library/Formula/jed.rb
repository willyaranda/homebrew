require 'formula'

class Jed < Formula
  url 'ftp://space.mit.edu/pub/davis/jed/v0.99/jed-0.99-19.tar.bz2'
  homepage 'http://www.jedsoft.org/jed/'
  sha1 '7783ac9035c7221575e74b544902151309d0d0ef'

  depends_on 's-lang'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make"

    ENV.deparallelize
    system "make install"
  end
end
