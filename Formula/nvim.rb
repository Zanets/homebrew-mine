class Nvim < Formula
  version '0.3.7'
  desc "Vim-fork focused on extensibility and usability."
  homepage "https://github.com/neovim/neovim"

  if OS.mac?
    url "https://github.com/neovim/neovim/releases/download/stable/nvim-macos.tar.gz"
    sha256 "4ebbcaf2a35af08cf7e04760c69241d233d0b6890344905fa46f053120eae450"
  elsif OS.linux?
    url "https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz"
    sha256 "bf480b9ade4f1780517c343a4c8960f5908c7c7e41c1c3214f16f8ae2c21ccf8"
  end


  def install
    bin.install "bin/nvim"
    share.install Dir["share/*"]
    if OS.mac?
      lib.install Dir["libs/*"]
    end

  end
end
