class FFmpeg < Formula
  version '4.1'
  desc "A complete, cross-platform solution to record, convert and stream audio and video."
  homepage "https://www.ffmpeg.org/"

  if OS.mac?
    url "https://evermeet.cx/ffmpeg/ffmpeg-#{version}.7z"
    sha256 "0a24ffa0fc221ad40a8304f52498fef2ea33e2d29d76415346c6269571177e9a"
  end


  def install
    bin.install "ffmpeg"
  end
end