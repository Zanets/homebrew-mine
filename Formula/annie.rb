class Annie < Formula
  version '0.9.3'
  desc "Fast, simple and clean video downloader"
  homepage "https://github.com/iawia002/annie"

  if OS.mac?
    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_macOS_64-bit.tar.gz"
    sha256 :no_check
  elsif OS.linux?
    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_Linux_64-bit.tar.gz"
    sha256 :no_check
  end


  def install
    bin.install "annie"
  end
end