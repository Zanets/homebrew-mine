class UniversalCtags < Formula
  version '5283b195'
  desc "Maintained ctags implementation"
  homepage "https://github.com/universal-ctags/ctags"

  if OS.linux?
    url "https://github.com/Zanets/universal-ctags-release/releases/download/#{version}/universal-ctags-#{version}-x86_64.tar.gz"
    sha256 "ae6be1db585cb28a73a31cf1cdd9f34c3047a643d4d0537b142f5ffdbd95d247"
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