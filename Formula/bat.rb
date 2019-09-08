class Bat < Formula
  version '0.12.1'
  desc "A cat(1) clone with wings."
  homepage "https://github.com/sharkdp/bat"

  if OS.mac?
    url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "0d1b97d29de048fa888ebd57f52f36330d653dc29365f905a185b322a8f80a4d"
  elsif OS.linux?
    url "https://github.com/sharkdp/bat/releases/download/v#{version}/bat-v#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "2709a2be8a40a5d267627729cd240df28167347dc202b8e76d14b05978ee1aaa"
  end


  def install
    bin.install "bat"
    man1.install "bat.1"
  end
end