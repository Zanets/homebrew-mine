class Fd < Formula
  version '8.1.1'
  desc "A simple, fast and user-friendly alternative to 'find'."
  homepage "https://github.com/sharkdp/fd"

  if OS.mac?
    url "https://github.com/sharkdp/fd/releases/download/v#{version}/fd-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "fa93305e78b27fa44e30ae5b33acc174e06d00ed8565d71121010951933b7ddb"
  elsif OS.linux?
    url "https://github.com/sharkdp/fd/releases/download/v#{version}/fd-v#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3a73baa5a3dea82d922109c2eba75614e4ac15d3b6aedceb313f6cb3c76893e5"
  end

  def install
    bin.install "fd"
    man1.install "fd.1"

    bash_completion.install "autocomplete/fd.bash-completion"
    fish_completion.install "autocomplete/fd.fish"
    zsh_completion.install "autocomplete/_fd"
  end
end