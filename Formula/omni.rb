# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.41"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.41/omni_darwin_x86_64.tar.gz"
      sha256 "b0e3a7c6dc4b5b5f25b90648656aae2ec8f3cd6daadd5d814acbc86810ec5bf7"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.41/omni_darwin_arm64.tar.gz"
      sha256 "58cd3e0bc69f6e86fad9e1b43caab8fed8f07c595c41e017c43ec3ed9e157524"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.41/omni_linux_x86_64.tar.gz"
      sha256 "80df47e9cc6f7051accfddb9ba1b381a0428b194a708db8fb0a328ac33d9cbc9"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.41/omni_linux_arm64.tar.gz"
      sha256 "bfaa3b8e6a82bf9015475e321801d893b28540bfb8b16ad47a346c9dd43590bb"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
