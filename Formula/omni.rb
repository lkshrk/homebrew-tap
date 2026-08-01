# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.27"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.27/omni_darwin_x86_64.tar.gz"
      sha256 "1fe191af6623edf173dcb45c1b759ad65fff180c659788efe0038e88fbefe460"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.27/omni_darwin_arm64.tar.gz"
      sha256 "8c679a665121f95dbb0b40ab901d921031fe00b12a2bc39e8995516760b4909c"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.27/omni_linux_x86_64.tar.gz"
      sha256 "6d651d7f43263eeee8da99ab9078e415ea68313684a041dae5a9ca9e8565fd3d"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.27/omni_linux_arm64.tar.gz"
      sha256 "8c0f56bd564fb3b47dc4657791982a191dfcabaf4166dd185d0c274467687225"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
