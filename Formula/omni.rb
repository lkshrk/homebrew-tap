# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.10.9"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.9/omni_darwin_x86_64.tar.gz"
      sha256 "e50623f57f535d9428426b7bf1b5b4c4498f88403826c2f972268e0b7d445398"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.9/omni_darwin_arm64.tar.gz"
      sha256 "458cbf600ab6c1ec033dba2644694aa799fd0a8939ee3991cec0e4804441224f"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.9/omni_linux_x86_64.tar.gz"
      sha256 "6d1c03439483e336c1d7aa2584da5f5d2f0649bb95b564dfcb1238ff21eb8a0a"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.9/omni_linux_arm64.tar.gz"
      sha256 "d9252cb03e59f3ccdb597b6c5307749e96d30fc743a3a69ae2df5044285f4dcf"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
