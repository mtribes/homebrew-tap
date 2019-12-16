# This file was generated by GoReleaser. DO NOT EDIT.
class Mtribes < Formula
  desc "A CLI to help automate app integration with mtribes."
  homepage "https://mtribes.com"
  version "0.19.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mtribes/mtcli/releases/download/v0.19.0/mtribes_Darwin_x86_64.tar.gz"
    sha256 "39de88c919b99667a3d847457a83d2205cd381a68a06f28d5bcd2580f442f1ce"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mtribes/mtcli/releases/download/v0.19.0/mtribes_Linux_x86_64.tar.gz"
      sha256 "30beb28fb3f17e7c35cbceab48cebcfffeadcc9c69bcdc2dd564a99341b05e03"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mtribes/mtcli/releases/download/v0.19.0/mtribes_Linux_arm64.tar.gz"
        sha256 "b082eab11b0c5669a7482124abe172cf582cd60538c28f5c80d541f1febf3721"
      else
        url "https://github.com/mtribes/mtcli/releases/download/v0.19.0/mtribes_Linux_armv6.tar.gz"
        sha256 "3666be37343935f8820c11e7a396f15ba3f1068b53f4ea4165508e45fbf6ca44"
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
