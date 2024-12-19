class Obuparse < Formula
  homepage "https://github.com/vimeo/l-smash"
  license "ISC"
  head "https://github.com/vimeo/l-smash.git"
    
  def install
    system "make", "PREFIX=#{prefix}", "LIBSUF=.dylib", "LDFLAGS=", "install"
    system "make", "PREFIX=#{prefix}", "LIBSUF=.dylib", "LDFLAGS=", "install-header"
  end
end
