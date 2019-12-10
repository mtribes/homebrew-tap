# This file was generated by GoReleaser. DO NOT EDIT.
class Mtribes < Formula
  desc "A CLI to help automate app integration with mtribes."
  homepage "https://mtribes.com"
  version "0.18.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mtribes/mtcli/releases/download/v0.18.0/mtribes_Darwin_x86_64.tar.gz"
    sha256 "0d8f0920546e078efd4a0b416065f94b3800b863b68443af0882726a49018424"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mtribes/mtcli/releases/download/v0.18.0/mtribes_Linux_x86_64.tar.gz"
      sha256 "456a9805cecf7717788ffd43367600c411045626579eaaebda4f71dde6ea9e5b"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mtribes/mtcli/releases/download/v0.18.0/mtribes_Linux_arm64.tar.gz"
        sha256 "da870178c78b6b3b07cde3b3d29af7e3152192686e90ad979848fc232fabe0c4"
      else
        url "https://github.com/mtribes/mtcli/releases/download/v0.18.0/mtribes_Linux_armv6.tar.gz"
        sha256 "60996a38ca4886d3bc19369e703bdf24c58c95ef722db7b99b41baeecc7fbab0"
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
