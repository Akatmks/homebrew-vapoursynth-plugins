class LSmash < Formula
  homepage "https://github.com/vimeo/l-smash"
  license "ISC"
  head "https://github.com/vimeo/l-smash.git"

  depends_on "obuparse"
  depends_on "gnu-sed" => :build
  
  def install
    inreplace "configure", /\bsed\b/, "gsed"
    system "./configure", "--prefix=#{prefix}", "--libdir=#{lib}"
    system "make", "install"
  end
end
