# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.10.8"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.8/omni_darwin_x86_64.tar.gz"
      sha256 "a2cef75dbb0eb6bb280078821c753a3e1b78bf13fe14b1b816d6bb08b3102138"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.8/omni_darwin_arm64.tar.gz"
      sha256 "6fad5fa676bd70c664c34d3f7b116134a4b989d5d7c6f07d34b73ec3566f6139"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.8/omni_linux_x86_64.tar.gz"
      sha256 "96a3e7b12820d0660ac2816aaf47671ec20ca4af4e1fd69398a4af196cfa6ecb"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.8/omni_linux_arm64.tar.gz"
      sha256 "8756e5ac514c353d2859401b4e13aaf891755cba28676e08fe99f746424d5810"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
