# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.15"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.15/omni_darwin_x86_64.tar.gz"
      sha256 "e6e6513e05267eebf8e1f47ad08f480e76bcd575b33486b1a1ee3c640088cab1"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.15/omni_darwin_arm64.tar.gz"
      sha256 "d7369f4fb87a1a3cc26cb19ce078e8a940ab10e7713c93295c77b695a1d3b796"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.15/omni_linux_x86_64.tar.gz"
      sha256 "8fe151f43eb720cb7c1e2355c21eb6d9d25b1d2fd59375285a124123dcb345f6"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.15/omni_linux_arm64.tar.gz"
      sha256 "28b68eb85841b4ec7fc46ece5a8fa698e67e598c4526711fbeaa6688dade1d92"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
