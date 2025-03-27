class VapoursynthBestsource < Formula
  homepage "https://github.com/vapoursynth/bestsource"
  license "MIT"
  head "https://github.com/vapoursynth/bestsource.git"
  
  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkgconf" => :build
  depends_on "vapoursynth"
  depends_on "ffmpeg"
  depends_on "xxhash"

  def install
    inreplace "meson.build", "vapoursynth_dep.get_variable(pkgconfig: 'libdir')", "'#{lib}'"
    system "meson", "setup", *std_meson_args, "build"
    system "meson", "compile", "-C", "build"
    system "meson", "install", "-C", "build"
  end
end
