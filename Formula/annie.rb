class Annie < Formula
  version '0.9.3'
  desc "Fast, simple and clean video downloader"
  homepage "https://github.com/iawia002/annie"

  if OS.mac?
    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_macOS_64-bit.tar.gz"
    sha256 "546d5412e70de9a53129554344a7230129de929de2a694c25316508b089696b8"
  elsif OS.linux?
    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_Linux_64-bit.tar.gz"
    sha256 "e1173ad44456403e4ce9a95fa6676216870a29b0f3bc45111eb6debf5b96d64f"
  end


  def install
    bin.install "annie"
  end
end