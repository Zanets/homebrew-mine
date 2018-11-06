class Ffmpeg < Formula
  version '4.1'
  desc "A complete, cross-platform solution to record, convert and stream audio and video."
  homepage "https://www.ffmpeg.org/"

  if OS.mac?
    url "https://evermeet.cx/ffmpeg/ffmpeg-#{version}.dmg"
    sha256 "791469be9b985f408790dfe9fed64b11f81010e691109a6671c14558456be8ff"
  end


  def install
    bin.install "ffmpeg"
  end
end