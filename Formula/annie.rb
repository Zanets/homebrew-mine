class Annie < Formula
  version '0.9.4'
  desc "Fast, simple and clean video downloader"
  homepage "https://github.com/iawia002/annie"

  if OS.mac?
    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_macOS_64-bit.tar.gz"
    sha256 "71192d49d6b2a4ac3e19fa51bb8dc4df1c0e73525fd80d40d811d62d84849ba1"
  elsif OS.linux?
    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_Linux_64-bit.tar.gz"
    sha256 "49212895f9dc59e2e2f90f3679ad0eea8ff778bf9eb9531190158c869cd4849e"
  end


  def install
    bin.install "annie"
  end
end