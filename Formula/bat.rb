class Rg < Formula
  version '0.8.0'
  desc "A cat(1) clone with wings."
  homepage "https://github.com/sharkdp/bat"

  if OS.mac?
    url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "aec82b058c6df5ab611883449093a179f49eac8b8f31aa26c47c4289f0f29c1b"
  elsif OS.linux?
    url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "b0f74ea66180f67d34fcfea528d55309571abc5d19065b0dad4ef23356d80e95"
  end


  def install
    bin.install "bat"
    man1.install "bat.1"

    bash_completion.install "autocomplete/bat.bash-completion"
    fish_completion.install "autocomplete/bat.fish"
    zsh_completion.install "autocomplete/_bat"
  end
end