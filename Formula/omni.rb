# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.18"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.18/omni_darwin_x86_64.tar.gz"
      sha256 "84473066262ed6611e0e4eede10e610f1df71fc94407c72eb2e3d2428c77d567"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.18/omni_darwin_arm64.tar.gz"
      sha256 "49a2723322f383142e2d3ac2a14ff39be82fed014fbb9013848ad40c0eb84352"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.18/omni_linux_x86_64.tar.gz"
      sha256 "84b49f12cc9f587758369417d1956400d7d81adb4c3552d0e0ec1a7ffb00edc8"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.18/omni_linux_arm64.tar.gz"
      sha256 "a6939aee47b9ee9d78a0b6e69d60e8acf3aadbc408d759664ea07b1fbaca8055"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
