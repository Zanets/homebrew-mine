class Nvim < Formula
  version '0.4.3'
  desc "Vim-fork focused on extensibility and usability."
  homepage "https://github.com/neovim/neovim"

  if OS.mac?
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos.tar.gz"
    sha256 "2354a60af47a61f54ad1fc115587af8db96dfbe8c8955c516af591d398134a2d"
  elsif OS.linux?
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-linux64.tar.gz"
    sha256 "7b9e10c6e04434824637beb65a7593d879716dc28c1833a261987b8deed38c6b"
  end


  def install
    bin.install "bin/nvim"
    share.install Dir["share/*"]
    if OS.mac?
      lib.install Dir["libs/*"]
    end

  end
end
