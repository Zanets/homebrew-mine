class Nvim < Formula
  version '0.4.2'
  desc "Vim-fork focused on extensibility and usability."
  homepage "https://github.com/neovim/neovim"

  if OS.mac?
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos.tar.gz"
    sha256 "bf701dfaa456d0e82f7c3fb885861af1282438cc9622853ca76b22d90d0a2516"
  elsif OS.linux?
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-linux64.tar.gz"
    sha256 "254a889274a758ce71c0ae619410616c5e26aeece3e9b6403779c9b7625b23e6"
  end


  def install
    bin.install "bin/nvim"
    share.install Dir["share/*"]
    if OS.mac?
      lib.install Dir["libs/*"]
    end

  end
end
