class Ffmpeg < Formula
  version '4.3.1'
  desc "A complete, cross-platform solution to record, convert and stream audio and video."
  homepage "https://www.ffmpeg.org/"

  if OS.mac?
    url "https://evermeet.cx/pub/ffmpeg/ffmpeg-#{version}.zip"
    sha256 "8f3e9fca63a76d9f69bc60daf5aa8b524178de0e425452a2ecd872a9fd2eb9f6"
  elsif OS.linux?
    url "https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz"
    sha256 "0c110ef554aa22053f1aa12e5bb49204754a88d50d66bb6ac3e81d2aa85a8a06"
  end


  def install
    bin.install "ffmpeg"
  end
end