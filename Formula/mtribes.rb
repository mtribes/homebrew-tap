# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mtribes < Formula
  desc "A CLI to help automate app integration with mtribes."
  homepage "https://mtribes.com"
  version "0.27.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mtribes/cli/releases/download/v0.27.4/mtribes_Darwin_x86_64.tar.gz"
      sha256 "bae3df6180d0844322727b0117e29b5eb3cd78ea0df4c4a0a7d2acc3bb504bc5"

      def install
        bin.install "mtribes"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mtribes/cli/releases/download/v0.27.4/mtribes_Darwin_arm64.tar.gz"
      sha256 "c2f018263115cd64839e000188c9e294f010b17d699b4e3e9420917800d5c550"

      def install
        bin.install "mtribes"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mtribes/cli/releases/download/v0.27.4/mtribes_Linux_arm64.tar.gz"
      sha256 "711f7b6c80c58644fd27fcb8396826615145d1819f36d72b556fbec007001111"

      def install
        bin.install "mtribes"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mtribes/cli/releases/download/v0.27.4/mtribes_Linux_armv6.tar.gz"
      sha256 "2dfc1050ae03af794b14d2193f2e31a5e2e8abe9f21844fb63f32a322da15d3b"

      def install
        bin.install "mtribes"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mtribes/cli/releases/download/v0.27.4/mtribes_Linux_x86_64.tar.gz"
      sha256 "6d62d8f9951550148af9098e398c5f82b517c9a34ad9445ac92060ca9eccc51c"

      def install
        bin.install "mtribes"
      end
    end
  end

  test do
    system "#{bin}/mtribes --version"
  end
end
