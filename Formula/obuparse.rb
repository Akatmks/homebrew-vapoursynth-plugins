class Obuparse < Formula
  homepage "https://github.com/vimeo/l-smash"
  license "ISC"
  head "https://github.com/vimeo/l-smash.git"
    
  def install
    system "make", "PREFIX=#{prefix}", "LIBSUF=.dylib", "LDFLAGS="
    lib.install "libobuparse.dylib"
    lib.install "libobuparse.a"
    include.install "obuparse.h"
  end
end
