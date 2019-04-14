class Bat < Formula
  version '0.10.0'
  desc "A cat(1) clone with wings."
  homepage "https://github.com/sharkdp/bat"

  if OS.mac?
    url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 :no_check
  elsif OS.linux?
    url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 :no_check
  end


  def install
    bin.install "bat"
    man1.install "bat.1"

    bash_completion.install "autocomplete/bat.bash-completion"
    fish_completion.install "autocomplete/bat.fish"
    zsh_completion.install "autocomplete/_bat"
  end
end