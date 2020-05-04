class Fd < Formula
  version '8.0.0'
  desc "A simple, fast and user-friendly alternative to 'find'."
  homepage "https://github.com/sharkdp/fd"

  if OS.mac?
    url "https://github.com/sharkdp/fd/releases/download/v#{version}/fd-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "25a3e716a6b2e76d06440edee4a0198b2cbf28b909036d92ea3d295e99fa0dd4"
  elsif OS.linux?
    url "https://github.com/sharkdp/fd/releases/download/v#{version}/fd-v#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "7ae6cdc7d1b787958e8072df7bd294609c62e6c8582d67e7bbe3f566e862ab33"
  end

  def install
    bin.install "fd"
    man1.install "fd.1"

    bash_completion.install "autocomplete/fd.bash-completion"
    fish_completion.install "autocomplete/fd.fish"
    zsh_completion.install "autocomplete/_fd"
  end
end