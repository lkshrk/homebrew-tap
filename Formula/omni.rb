# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.25"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.25/omni_darwin_x86_64.tar.gz"
      sha256 "b1e8e95f4a742d3409f79a21969a6f81df62e6067b5739b72da9b0fcccfe8b4f"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.25/omni_darwin_arm64.tar.gz"
      sha256 "714c54bf46f819200b8cf7d81c213513d32bc32cd706378fedf54c6a6974b03d"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.25/omni_linux_x86_64.tar.gz"
      sha256 "d60a06770b2744c97c6c73864c8e7233a77358f1f5c4f1bbaefe4414272bf20f"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.25/omni_linux_arm64.tar.gz"
      sha256 "0a3c6d2d2f1e1334c90e35ac693b98d64e22855981fb55071f4b32bc9363f482"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
