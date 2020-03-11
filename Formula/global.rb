class Global < Formula
  version '6.6.4'
  desc "Source code tag system"
  homepage "https://www.gnu.org/software/global/"

  if OS.linux?
    url "https://github.com/Zanets/universal-ctags-release/releases/download/global-#{version}/global-#{version}-x86_64.tar.gz"
    sha256 "9231983009a5a4fa4f2c2f4897be9cfb03131a7caf3d0ef6a72093bdcc6ea78f"
  end

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
    share.install Dir["share/*"]
    var.install Dir["var/*"]
  end
end