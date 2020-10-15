# This file was generated by GoReleaser. DO NOT EDIT.
class Mtribes < Formula
  desc "A CLI to help automate app integration with mtribes."
  homepage "https://mtribes.com"
  version "0.26.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mtribes/cli/releases/download/v0.26.3/mtribes_Darwin_x86_64.tar.gz"
    sha256 "703426ec371c05996ada0030083ef418b003bb583fb75a19a3616d10b89638f6"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mtribes/cli/releases/download/v0.26.3/mtribes_Linux_x86_64.tar.gz"
      sha256 "9984ff7de05be186a7d4766dade5e6ed18e183d8034718d46e3a150c13e036e0"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mtribes/cli/releases/download/v0.26.3/mtribes_Linux_arm64.tar.gz"
        sha256 "9d052c452700c184b3f399b3eac4a6102bc03db2db3c76100f617c3fc9a47b20"
      else
        url "https://github.com/mtribes/cli/releases/download/v0.26.3/mtribes_Linux_armv6.tar.gz"
        sha256 "33e09fb9ea8841fe616fdfbe5cf57beb688c26b12ad13624816cc185537f0f06"
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
