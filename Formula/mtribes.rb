# This file was generated by GoReleaser. DO NOT EDIT.
class Mtribes < Formula
  desc "A CLI to help automate app integration with mtribes."
  homepage "https://mtribes.com"
  version "0.23.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mtribes/mtcli/releases/download/v0.23.3/mtribes_Darwin_x86_64.tar.gz"
    sha256 "fa8aa04a14c61ead5601f6af4c5ca7589be95ab16df0ff156754cea23a181877"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mtribes/mtcli/releases/download/v0.23.3/mtribes_Linux_x86_64.tar.gz"
      sha256 "765dbe5660a6297475fa1bbc2a78af5364a7e8fc1a864dc7584bcdc7d842602e"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mtribes/mtcli/releases/download/v0.23.3/mtribes_Linux_arm64.tar.gz"
        sha256 "44e423791deed103af619ba69bd3af36124d1bed002820f78112525c8efa6196"
      else
        url "https://github.com/mtribes/mtcli/releases/download/v0.23.3/mtribes_Linux_armv6.tar.gz"
        sha256 "ca0bc80852ec3f7348336eb2612caa318c1f3845263be7af3ebf27d4194414a2"
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
