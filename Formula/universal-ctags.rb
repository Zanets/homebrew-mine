class UniversalCtags < Formula
  version '30cd8e03'
  desc "Maintained ctags implementation"
  homepage "https://github.com/universal-ctags/ctags"

  if OS.linux?
    url "https://github.com/Zanets/universal-ctags-release/releases/download/ctags-#{version}/universal-ctags-#{version}-x86_64.tar.gz"
    sha256 "cdc4143a6b54f2ad8fe02578c25b31f27dd6098d0cc4fed9ede557e2aedb8758"  
  end

  def install
    bin.install "bin/ctags"
    bin.install "bin/readtags"
    man7.install "share/man/man7/ctags-optlib.7"
    man7.install "share/man/man7/ctags-incompatibilities.7"
    man5.install "share/man/man5/tags.5"
    man1.install "share/man/man1/ctags.1"

  end
end