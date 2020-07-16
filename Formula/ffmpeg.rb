class Ffmpeg < Formula
  version '4.3.1'
  desc "A complete, cross-platform solution to record, convert and stream audio and video."
  homepage "https://www.ffmpeg.org/"

  if OS.mac?
    url "https://ffmpeg.zeranoe.com/builds/macos64/static/ffmpeg-#{version}.7z"
    sha256 "ad768b3faa527d1a95eb157663f22a4d831ce9a307095176a67402f44d8c4575"
  elsif OS.linux?
    url "https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz"
    sha256 "0c110ef554aa22053f1aa12e5bb49204754a88d50d66bb6ac3e81d2aa85a8a06"
  end


  def install
    bin.install "bin/ffmpeg"
	bin.install "bin/ffplay"
	bin.install "bin/ffprobe"
  end
end