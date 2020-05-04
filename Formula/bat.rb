class Bat < Formula
  version '0.15.0'
  desc "A cat(1) clone with wings."
  homepage "https://github.com/sharkdp/bat"

  if OS.mac?
    url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "0e5b37a18eef711ad0645b443eacf503fe977ac1a62317b695c8f5012c71904f"
  elsif OS.linux?
    url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "ebbfdb18237600770eba64f8a80d22b417d7db43d4966908b4a4fa52bea2f929"
  end


  def install
    bin.install "bat"
    man1.install "bat.1"
  end
end