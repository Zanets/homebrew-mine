class Nvim < Formula
  version '0.3.8'
  desc "Vim-fork focused on extensibility and usability."
  homepage "https://github.com/neovim/neovim"

  if OS.mac?
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos.tar.gz"
    sha256 "f0b0774e9a4f576058a76412b88405a56f984c4c261ab977e379e23e8f10ae34"
  elsif OS.linux?
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-linux64.tar.gz"
    sha256 "30440b0eb4eb0adbf09c458891e81880c9efe5245b52316e9af1c08136088e6a"
  end


  def install
    bin.install "bin/nvim"
    share.install Dir["share/*"]
    if OS.mac?
      lib.install Dir["libs/*"]
    end

  end
end
