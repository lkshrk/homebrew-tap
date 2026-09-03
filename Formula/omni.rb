# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.10.10"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.10/omni_darwin_x86_64.tar.gz"
      sha256 "8581f1d95a72b8e0e96ca05714c85d096381b35921e0273d08b5ade69e97b370"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.10/omni_darwin_arm64.tar.gz"
      sha256 "e82c7d2ba98bc8648e93ce600a30676c813478c217521a815c8b23fd7e0ff13b"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.10/omni_linux_x86_64.tar.gz"
      sha256 "f68df86cd761f3b43f7ef9c9036d64fc7ded131b2f5b71077fa4eb655a516d10"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.10/omni_linux_arm64.tar.gz"
      sha256 "ba56c7c5361bd6136271eca13fcab5525163ebd551742ef1bb6b9f92686265f9"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
