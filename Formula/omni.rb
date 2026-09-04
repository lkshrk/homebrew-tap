# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.10.13"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.13/omni_darwin_x86_64.tar.gz"
      sha256 "11829b73c4bb265ecdf38688501e07bf5d6672753c8409932698cdfe8cba52bf"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.13/omni_darwin_arm64.tar.gz"
      sha256 "4c1afcb580070be9d922423f19f089b984bb5bbc873aac764ddcbc2f3a3e9534"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.13/omni_linux_x86_64.tar.gz"
      sha256 "afb64f49a05defd64d3c65e66c543ace1e47e6dfb3bf1249bf1b5b7d3eedc3b4"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.13/omni_linux_arm64.tar.gz"
      sha256 "bffe3ee536f481dcca0a21d01de2a899c173912653cc289a7bbf636c8060907f"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
