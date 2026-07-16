# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.9"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.9/omni_darwin_x86_64.tar.gz"
      sha256 "f6235a09869b9a77b9509867cf73a6aab257b55d8520a993e49c9a67c5e8095e"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.9/omni_darwin_arm64.tar.gz"
      sha256 "7569365772dd7516410c79210bf2b4af76c4d79f5351d5def76c8246b82c354e"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.9/omni_linux_x86_64.tar.gz"
      sha256 "5bf6898e852c97727dee6adb468967d66c61d96ccb5a19c8dbbaa54e64f91c1b"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.9/omni_linux_arm64.tar.gz"
      sha256 "d3f31ea07b77a9bd81757f9464e80650a49329ff708db0237d7ca8bbd39b6d34"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
