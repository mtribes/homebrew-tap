# This file was generated by GoReleaser. DO NOT EDIT.
class Mtribes < Formula
  desc "A CLI to help automate app integration with mtribes."
  homepage "https://mtribes.com"
  version "0.8.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/mtribes/mtcli/releases/download/v0.8.0/mtribes_Darwin_x86_64.tar.gz"
    sha256 "ffc9e94208976dedba802f3c2ae358cdc88523a55f1b649ff61e997f34e1b088"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/mtribes/mtcli/releases/download/v0.8.0/mtribes_Linux_x86_64.tar.gz"
      sha256 "73d42ed5b0f33233dfe0da5992bb5237f0d356c510de3bff7a59409550af6ddf"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mtribes/mtcli/releases/download/v0.8.0/mtribes_Linux_arm64.tar.gz"
        sha256 "059621ec1ef9ad312a0f0f6b4084384db8ec4893f163ebedff8ba28948193460"
      else
        url "https://github.com/mtribes/mtcli/releases/download/v0.8.0/mtribes_Linux_armv6.tar.gz"
        sha256 "82570b0184379441dc71c2fba33404f4f05f6f09b30a0c9c72962da8d4c12cc6"
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
