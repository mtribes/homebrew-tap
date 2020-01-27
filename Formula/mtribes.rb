# This file was generated by GoReleaser. DO NOT EDIT.
class Mtribes < Formula
  desc "A CLI to help automate app integration with mtribes."
  homepage "https://mtribes.com"
  version "0.20.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mtribes/mtcli/releases/download/v0.20.0/mtribes_Darwin_x86_64.tar.gz"
    sha256 "37b4e759daa9dd3ef52f3e28ee286d63c6b9e31f041a6b24fef004d85a079f0a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mtribes/mtcli/releases/download/v0.20.0/mtribes_Linux_x86_64.tar.gz"
      sha256 "51b18e68acb001921b2c90a51ecfad39a3b600148130c19081aec3058d1fa747"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mtribes/mtcli/releases/download/v0.20.0/mtribes_Linux_arm64.tar.gz"
        sha256 "b1cde3aea3ac6fc05f85cee0781e7eeeb4709e65220716f991f3807d3e17dbb3"
      else
        url "https://github.com/mtribes/mtcli/releases/download/v0.20.0/mtribes_Linux_armv6.tar.gz"
        sha256 "61b98d39cf5b0872631484e19a3e4b51a44c8f31dba99caa7036798b3fb70784"
      end
    end
  end

  def install
    bin.install "mtribes"
  end

  test do
    system "#{bin}/mtribes --version"
  end
end
