class FfmpegHomeOfAvisynthplusEvolution < Formula
  homepage "https://github.com/HomeOfAviSynthPlusEvolution/FFmpeg"
  license "GPL-3.0-or-later"
  head "https://github.com/HomeOfAviSynthPlusEvolution/FFmpeg.git"

  keg_only "avoid conflicts with upstream"

  def install
    system "./configure", "--enable-gpl", "--enable-version3", "--enable-nonfree", "--disable-debug", "--prefix=#{prefix}", "--libdir=#{lib}"
    system "make", "install"
  end

  def caveats
    on_macos do
      "ffmpeg-home-of-avisynthplus-evolution is keg-only to avoid conflicts with upstream."
    end
  end
end
