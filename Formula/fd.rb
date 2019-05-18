class Fd < Formula
  version '7.3.0'
  desc "A simple, fast and user-friendly alternative to 'find'."
  homepage "https://github.com/sharkdp/fd"

  if OS.mac?
    url "https://github.com/sharkdp/fd/releases/download/v#{version}/fd-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "c37cd27c3e3f31dc0c676854cb9dd20470a2815a3a37d012d52e93c0ea9432a8"
  elsif OS.linux?
    url "https://github.com/sharkdp/fd/releases/download/v#{version}/fd-v#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "fd49c1e181b94a10f1f8a2325b51418a3978c752595d8192b386ccad67a7dc0b"
  end

  def install
    bin.install "fd"
    man1.install "fd.1"

    bash_completion.install "autocomplete/fd.bash-completion"
    fish_completion.install "autocomplete/fd.fish"
    zsh_completion.install "autocomplete/_fd"
  end
end