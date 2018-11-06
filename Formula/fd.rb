class Fd < Formula
  version '7.2.0'
  desc "A simple, fast and user-friendly alternative to 'find'."
  homepage "https://github.com/sharkdp/fd"

  if OS.mac?
    url "https://github.com/sharkdp/fd/releases/download/v#{version}/fd-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "5b5597b99f4f57edd2ee54ec8c683a73ff13027ed4e6a8f525bf9c30e088473f"
  elsif OS.linux?
    url "https://github.com/sharkdp/fd/releases/download/v#{version}/fd-v#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "63ba7122ad37a3df48a0faff0b33d249694c7e8c2c8cd1f3af5a5fc5b7b74a09"
  end

  def install
    bin.install "fd"
    man1.install "fd.1"

    bash_completion.install "autocomplete/fd.bash-completion"
    fish_completion.install "autocomplete/fd.fish"
    zsh_completion.install "autocomplete/_rg"
  end
end