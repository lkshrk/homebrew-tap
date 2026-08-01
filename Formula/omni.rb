# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.28"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.28/omni_darwin_x86_64.tar.gz"
      sha256 "2452d90b2fd6f62b80ed7ab01dbc7a36f34230e3f2ade62fc2e46fba7a1a0e4f"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.28/omni_darwin_arm64.tar.gz"
      sha256 "bb877806399fb8740b9aff39085f72157ddef033772d1338b25d0ed4f2aee396"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.28/omni_linux_x86_64.tar.gz"
      sha256 "61bc98317cb17ef9ff1cff6668d529aa9772cc638cf8ca9deeeef288d12cd8dd"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.28/omni_linux_arm64.tar.gz"
      sha256 "04183d5380e3477ecb8c99d8c0b1c8a1356e45e4ec5b7437af4735e32b35852c"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
