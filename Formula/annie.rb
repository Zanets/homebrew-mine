class Annie < Formula
  version '0.9.5'
  desc "Fast, simple and clean video downloader"
  homepage "https://github.com/iawia002/annie"

  if OS.mac?
    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_macOS_64-bit.tar.gz"
    sha256 "457e119e1bc9f31d08e32b8a79a75508cd3091b0b5fbaa9cc6e2dff5c7183dcd"
  elsif OS.linux?
    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_Linux_64-bit.tar.gz"
    sha256 "0a16c6b8e2b04268d0b23cb3e55d5854cc4bccab658b254942a0ae3504dd0c7c"
  end


  def install
    bin.install "annie"
  end
end