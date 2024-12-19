class VapoursynthLsmas < Formula
  homepage "https://github.com/HomeOfAviSynthPlusEvolution/L-SMASH-Works"
  license "ISC"
  head "https://github.com/HomeOfAviSynthPlusEvolution/L-SMASH-Works.git"

  depends_on "meson" => :build
  depends_on "vapoursynth"
  depends_on "l-smash"

  def install
    Dir.chdir "VapourSynth"
    system "meson", "setup", *std_meson_args, "build"
    system "meson", "compile", "-C", "build"
    system "meson", "install", "-C", "build"
  end
end
