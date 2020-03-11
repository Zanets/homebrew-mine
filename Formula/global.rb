class Global < Formula
  version '6.6.4'
  desc "Source code tag system"
  homepage "https://www.gnu.org/software/global/"

  if OS.linux?
    url "https://github.com/Zanets/universal-ctags-release/releases/download/global-#{version}/global-#{version}-x86_64.tar.gz"
    sha256 "2709a2be8a40a5d267627729cd240df28167347dc202b8e76d14b05978ee1aaa"
  end

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
    share.install Dir["share/*"]
    var.install Dir["var/*"]
  end
end