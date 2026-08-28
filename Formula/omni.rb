# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.40"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.40/omni_darwin_x86_64.tar.gz"
      sha256 "1a56de59b06e1888830f3be1e141d8d2c048ce4ea10bc28787729ac3c79c7188"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.40/omni_darwin_arm64.tar.gz"
      sha256 "13f45428940d5664c0ae224659d8bb5dcd8c9757ea3025971c15357340291ef2"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.40/omni_linux_x86_64.tar.gz"
      sha256 "184f53ad4cb1fe4cdb85a849b5e9533b06b59e19e0d79d06025a12e80dfe0f2e"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.40/omni_linux_arm64.tar.gz"
      sha256 "ce4261e79f5a122fed838e21f4f4c7d74fb82aa9e55cb181d0a2f298c1e15a8d"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
