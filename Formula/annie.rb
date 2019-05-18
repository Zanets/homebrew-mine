class Annie < Formula
  version '0.9.3'
  desc "Fast, simple and clean video downloader"
  homepage "https://github.com/iawia002/annie"

  if OS.mac?
    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_macOS_64-bit.tar.gz"
    sha256 "546d5412e70de9a53129554344a7230129de929de2a694c25316508b089696b8"
  elsif OS.linux?
    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_Linux_64-bit.tar.gz"
    sha256 "b27690640102271bc0af7bd8fb95d9b1f64a770ee5bbd2c01e12be274e01f026"
  end


  def install
    bin.install "annie"
  end
end