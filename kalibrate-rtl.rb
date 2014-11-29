require "formula"

class KalibrateRtl < Formula
  homepage "http://thre.at/kalibrate"
  head "https://github.com/steve-m/kalibrate-rtl.git"

  depends_on "libtool" => :build
  depends_on "automake" => :build
  depends_on "autoconf" => :build
  depends_on "pkg-config" => :build
  depends_on "fftw"
  depends_on "rtl-sdr"

  def install
    system "./bootstrap"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end

  test do
    system bin/"kal", "-h"
  end
end
