# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.34"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.34/omni_darwin_x86_64.tar.gz"
      sha256 "159c3dd9f1c2d9c76182d0301e6eff79f1f26464a9f64352b34c1fee92b0d743"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.34/omni_darwin_arm64.tar.gz"
      sha256 "b45fe97f4f1377f71589a148a8e801aa4a21883809fa0d02cc01de1b3068cee9"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.34/omni_linux_x86_64.tar.gz"
      sha256 "efda4b22ff6c6bf0f860347dfdbd5fe0ec5193648500a3870cbdc503aae873cf"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.34/omni_linux_arm64.tar.gz"
      sha256 "f471308611ab7e9ec23c82255e21488db916dc52e25e99d24750bfb7680ba0ab"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
