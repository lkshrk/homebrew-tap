# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.10"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.10/omni_darwin_x86_64.tar.gz"
      sha256 "e20ca1f2d0ce0a82a013a874f376d4beb44cd6b0c885b0ecb10fd6154b078bf9"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.10/omni_darwin_arm64.tar.gz"
      sha256 "06707fcf45b98ad6c4da37b48a31048f2482c751a69fe683cd99b87ec803e98e"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.10/omni_linux_x86_64.tar.gz"
      sha256 "7d33ac440b6c11d4adc697def34867798d9fca0f61499a5c3b8df8f9bcbb4d13"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.10/omni_linux_arm64.tar.gz"
      sha256 "fbc1236f7ea16973c9bcb813e6e756fcddbb4a6e17e2a900afa4c6f01e4f8ac0"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
