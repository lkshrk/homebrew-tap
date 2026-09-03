# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.10.11"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.11/omni_darwin_x86_64.tar.gz"
      sha256 "2f45ad7904d3456c03ee0a475921cd0518b21a6105026b0cf6ac3231e8f496e8"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.11/omni_darwin_arm64.tar.gz"
      sha256 "6e29922e1fff2122df3b219efb2245451c614b6da4a9b917b1995efe0770e0b8"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.11/omni_linux_x86_64.tar.gz"
      sha256 "f1f90919d9a218a048a919b0af8ff8affcd9d4e7138708a5761bda101ed97b43"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.11/omni_linux_arm64.tar.gz"
      sha256 "34127a453bbee494491418c4e0c784241e6dc6eb440104d1ee4b5b24f86d079f"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
