# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.11.5"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.5/omni_darwin_x86_64.tar.gz"
      sha256 "9aae4b124a544d5d8d0d0b0499c8cc0171f5d99a77d13f96878e8b9bad775dd3"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.5/omni_darwin_arm64.tar.gz"
      sha256 "1270b2a57bf873afec7419fa5106286a4ce8097983f8fa94e1161dd38c53b29c"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.5/omni_linux_x86_64.tar.gz"
      sha256 "fad784025c8b2e150d783510519af0401b99c9022a2535a0ba34a03b8f16b96c"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.5/omni_linux_arm64.tar.gz"
      sha256 "f14a69ebb3372b58b3adde5f1c5efd9fd81d255cea1be7266b7a1ad3bffdc86a"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
