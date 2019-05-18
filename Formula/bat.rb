class Bat < Formula
  version '0.11.0'
  desc "A cat(1) clone with wings."
  homepage "https://github.com/sharkdp/bat"

  if OS.mac?
    url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "bbe65ca55dc1d1dec2273cf8e5e7c2ac9f84c74548f13b947b573d00adf94dd5"
  elsif OS.linux?
    url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "96f10eb21eda3575dcef5250c602dbd9bb7237e63205a34afc347c6bd04a1cd6"
  end


  def install
    bin.install "bat"
    man1.install "bat.1"
  end
end