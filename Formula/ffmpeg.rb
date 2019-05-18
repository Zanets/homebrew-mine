class Ffmpeg < Formula
  version '4.1.3'
  desc "A complete, cross-platform solution to record, convert and stream audio and video."
  homepage "https://www.ffmpeg.org/"

  if OS.mac?
    url "https://ffmpeg.zeranoe.com/builds/macos64/static/ffmpeg-20190517-96c79d4-macos64-static.zip"
    sha256 "56bccd1d960c20d2abcac80470710433cb6556cfe62b5495629e6d16c3726ec0"
  elsif OS.linux?
    url "https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz"
    sha256 "60a20667c2f30368a47f764830701818ce823888bfb8168623248dad2b38ba37<Paste>"
  end


  def install
    bin.install "bin/ffmpeg"
	bin.install "bin/ffplay"
	bin.install "bin/ffprobe"
  end
end