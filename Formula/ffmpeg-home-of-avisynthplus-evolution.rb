class FfmpegHomeOfAvisynthplusEvolution < Formula
  homepage "https://github.com/HomeOfAviSynthPlusEvolution/FFmpeg"
  license "GPL-3.0-or-later"
  head "https://github.com/HomeOfAviSynthPlusEvolution/FFmpeg.git"

  def install
    system "./configure", "--enable-gpl", "--enable-version3", "--enable-nonfree", "--disable-debug", "--prefix=#{prefix}", "--libdir=#{libdir}"
    system "make", "install"
  end
end
