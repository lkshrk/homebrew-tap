# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.11.4"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.4/omni_darwin_x86_64.tar.gz"
      sha256 "edf35b561d6a0de3ed7769865a20aab9b75bda9a3e3df0db73b52feeed321ed4"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.4/omni_darwin_arm64.tar.gz"
      sha256 "a9c0599958f51feeb9c087dd3a5c71bd403eee9ddbe0437a8e8c20fb9e8622ae"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.4/omni_linux_x86_64.tar.gz"
      sha256 "c9473cc1abbe57e4df2a468e9ddbc4d16b78fdd404e4fb6f1beed3eb1e1f420a"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.4/omni_linux_arm64.tar.gz"
      sha256 "cf88da5f58ad8447950cabe5cb9411e6efd06a874b3411550277c726b68ad588"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
