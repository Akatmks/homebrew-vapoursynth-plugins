class VapoursynthLsmas < Formula
  homepage "https://github.com/HomeOfAviSynthPlusEvolution/L-SMASH-Works"
  license "ISC"
  head "https://github.com/HomeOfAviSynthPlusEvolution/L-SMASH-Works.git"

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "pkgconf" => :build
  depends_on "vapoursynth"
  depends_on "l-smash"
  depends_on "ffmpeg"

  def install
    Dir.chdir "VapourSynth" do
      inreplace "meson.build", "vapoursynth_dep.get_pkgconfig_variable('libdir')", "'#{lib}'"
      system "meson", "setup", *std_meson_args, "build"
      system "meson", "compile", "-C", "build"
      system "meson", "install", "-C", "build"
    end
  end
end
