# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.31"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.31/omni_darwin_x86_64.tar.gz"
      sha256 "3461b11d78dbca8583179346ef82657762198541e090d30833e5c1f01672a0df"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.31/omni_darwin_arm64.tar.gz"
      sha256 "260d8b0460e9a8e0281802b40eb2dd3e8da40527706b43dc0c4998245d3727dd"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.31/omni_linux_x86_64.tar.gz"
      sha256 "1e5c14bfe19de05a024ca3623d27bc9d95ee752cd185059b65b654f7a21e5982"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.31/omni_linux_arm64.tar.gz"
      sha256 "8cebfcf2fffa9dd7e6b1788db7506dcdff16327629c5e26fdb0e0b5775edbf1c"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
