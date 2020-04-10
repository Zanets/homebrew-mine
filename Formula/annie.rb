class Annie < Formula
  version '0.9.8'
  desc "Fast, simple and clean video downloader"
  homepage "https://github.com/iawia002/annie"

  if OS.mac?
    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_macOS_64-bit.tar.gz"
    sha256 "1921e50048f54b482d4e983ab4e4851072760375271827327fb2df86f6860772"
  elsif OS.linux?
    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_Linux_64-bit.tar.gz"
    sha256 "90b530e81e9414d5418d05c48815e238ea806a4de156cbdd01349a3f0965d184"
  end


  def install
    bin.install "annie"
  end
end