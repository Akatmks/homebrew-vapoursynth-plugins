class Obuparse < Formula
  homepage "https://github.com/dwbuiten/obuparse"
  license "ISC"
  head "https://github.com/dwbuiten/obuparse.git"
    
  def install
    system "make", "PREFIX=#{prefix}", "LIBSUF=.dylib", "LDFLAGS=", "install", "install-header", "install-tools"
  end
end
