class Bed < Formula
  version '0.2.0'
  desc "Binary editor written in Go "
  homepage "https://github.com/itchyny/bed"

  if OS.mac?
    url "https://github.com/itchyny/bed/releases/download/v#{version}/bed_v#{version}_darwin_amd64.zip"
    sha256 "e187964e997826fedd716ed2c848e8e37d195f2dc2426e9f2fcec895c7d204bb"
  elsif OS.linux?
    url "https://github.com/itchyny/bed/releases/download/v#{version}/bed_v#{version}_linux_amd64.tar.gz"
    sha256 "0e96ee93e79cd2f47053a1995f770922dacc6822ff3acfafa5f4b171823c7dca"
  end


  def install
    bin.install "bed"
  end
end