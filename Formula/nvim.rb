class Nvim < Formula
  version '0.3.5'
  desc "Vim-fork focused on extensibility and usability."
  homepage "https://github.com/neovim/neovim"

  if OS.mac?
    url "https://github.com/neovim/neovim/releases/download/stable/nvim-macos.tar.gz"
    sha256 "6e23e1a499039ec67e817a5448541227cd3dde3863a859ce5219950ea9f9fd9b"
  elsif OS.linux?
    url "https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz"
    sha256 "9b18feb52f1789056823a30a99e156349f8cb7692ac5a360616529717efa73a6"
  end


  def install
    bin.install "bin/nvim"
    share.install Dir["share/*"]
    if OS.mac?
      lib.install Dir["libs/*"]
    end

  end
end
