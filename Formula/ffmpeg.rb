class Ffmpeg < Formula
  version '4.1'
  desc "A complete, cross-platform solution to record, convert and stream audio and video."
  homepage "https://www.ffmpeg.org/"

  if OS.mac?
    url "https://evermeet.cx/ffmpeg/ffmpeg-#{version}.dmg"
    sha256 "791469be9b985f408790dfe9fed64b11f81010e691109a6671c14558456be8ff"
  elsif OS.linux?
    url "https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-64bit-static.tar.xz"
    sha256 "db4753fc898c80276668368cd99f00e1b7980dcf20568b9c69b86c857646acb8"
  end


  def install
    bin.install "ffmpeg"
  end
end