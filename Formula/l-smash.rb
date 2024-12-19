class LSmash < Formula
  homepage "https://github.com/vimeo/l-smash"
  license "ISC"
  head "https://github.com/vimeo/l-smash.git"

  depends_on "obuparse"
  depends_on "gnu-sed" => :build
  
  def install
    system "gsed", "-i", "-e", "s/\\bsed\\b/gsed/g", "configure"
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
end
