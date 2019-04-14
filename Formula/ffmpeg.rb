class Ffmpeg < Formula
  version '4.1.3'
  desc "A complete, cross-platform solution to record, convert and stream audio and video."
  homepage "https://www.ffmpeg.org/"

  if OS.mac?
    url "https://evermeet.cx/ffmpeg/ffmpeg-#{version}.dmg"
    sha256 :no_check
  end


  def install
    bin.install "ffmpeg"
  end
end