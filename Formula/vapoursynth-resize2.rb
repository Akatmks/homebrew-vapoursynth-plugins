class VapoursynthResize2 < Formula
  homepage "https://github.com/Jaded-Encoding-Thaumaturgy/vapoursynth-resize2"
  license "ISC"
  head "https://github.com/Jaded-Encoding-Thaumaturgy/vapoursynth-resize2.git"

  depends_on "meson" => :build
  depends_on "cmake" => :build
  depends_on "pkgconf" => :build
  depends_on "vapoursynth"
  depends_on "zimg"

  def install
    system "meson", "setup", *std_meson_args, "build"
    system "meson", "compile", "-C", "build"
    system "meson", "install", "-C", "build"
  end
end
