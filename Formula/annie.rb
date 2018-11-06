class Annie < Formula
  version '0.8.3'
  desc "Fast, simple and clean video downloader"
  homepage "https://github.com/iawia002/annie"

  if OS.mac?
    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_macOS_64-bit.tar.gz"
    sha256 "91cd007d483fdcf7b0d17b236dc54316b1b226c7b1b7761f9abb3e2a95d8aadc"
  elsif OS.linux?
    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_Linux_64-bit.tar.gz"
    sha256 "b27690640102271bc0af7bd8fb95d9b1f64a770ee5bbd2c01e12be274e01f026"
  end


  def install
    bin.install "annie"
  end
end