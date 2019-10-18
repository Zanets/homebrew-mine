class Fd < Formula
  version '7.4.0'
  desc "A simple, fast and user-friendly alternative to 'find'."
  homepage "https://github.com/sharkdp/fd"

  if OS.mac?
    url "https://github.com/sharkdp/fd/releases/download/v#{version}/fd-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "07200f046915c82c7ca9929286e042ede7d4f4639b11787714578e585335bf88"
  elsif OS.linux?
    url "https://github.com/sharkdp/fd/releases/download/v#{version}/fd-v#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "5bb566d9a5b9190ba8da94bd0ef1d609aab82433c0988613192a7bbb4aae395c"
  end

  def install
    bin.install "fd"
    man1.install "fd.1"

    bash_completion.install "autocomplete/fd.bash-completion"
    fish_completion.install "autocomplete/fd.fish"
    zsh_completion.install "autocomplete/_fd"
  end
end