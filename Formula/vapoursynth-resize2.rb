class VapoursynthResize2 < Formula
  homepage "https://github.com/Jaded-Encoding-Thaumaturgy/vapoursynth-resize2"
  license "ISC"
  head "https://github.com/Jaded-Encoding-Thaumaturgy/vapoursynth-resize2.git"

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkgconf" => :build
  depends_on "vapoursynth"

  def install
    inreplace "subprojects/packagefiles/zimg/meson.build", "NEON_CFLAGS = ['-march=armv7-a', '-mfpu=neon-vfpv4']", "NEON_CFLAGS = ['-march=armv7-a']"
    system "meson", "setup", "--prefix=#{prefix}", "--libdir=#{lib}", "--buildtype=release", "build"
    system "meson", "compile", "-C", "build"
    system "meson", "install", "-C", "build"
  end
end
