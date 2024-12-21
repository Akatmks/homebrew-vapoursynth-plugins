class FfmpegHomeOfAvisynthplusEvolution < Formula
  homepage "https://github.com/HomeOfAviSynthPlusEvolution/FFmpeg"
  license "GPL-3.0-or-later"
  head "https://github.com/HomeOfAviSynthPlusEvolution/FFmpeg.git", branch: "custom-patches-for-lsmashsource"

  keg_only "avoid conflicts with upstream"

  def install
    system "./configure", "--enable-gpl", "--enable-version3", "--disable-debug", "--prefix=#{prefix}", "--libdir=#{lib}"
    system "make", "install"
  end
end
