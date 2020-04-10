class Bat < Formula
  version '0.13.0'
  desc "A cat(1) clone with wings."
  homepage "https://github.com/sharkdp/bat"

  if OS.mac?
    url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "e6b9b00ac30c2920f1a1fb2be57224c314519d55559f9017125671b6368286cd"
  elsif OS.linux?
    url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "4a1650c2b82eaa92f08f47ce0d0eb72946d3a92ec748672fab2c94920bef7818"
  end


  def install
    bin.install "bat"
    man1.install "bat.1"
  end
end