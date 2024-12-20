class LSmash < Formula
  homepage "https://github.com/vimeo/l-smash"
  license "ISC"
  url "https://github.com/vimeo/l-smash/archive/refs/tags/v2.18.0.tar.gz"
  sha256 "9a2ae612e3d84116225725013cda2a6e996f65767d923fc07bb67025de9d2215"
  head "https://github.com/vimeo/l-smash.git"

  depends_on "obuparse"
  depends_on "gnu-sed" => :build
  
  def install
    inreplace "configure", /\bsed\b/, "gsed"
    system "./configure", "--prefix=#{prefix}", "--libdir=#{lib}"
    system "make", "install"
  end
end
