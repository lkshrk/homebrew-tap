# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.10.0"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.0/omni_darwin_x86_64.tar.gz"
      sha256 "84b0cb353bc5c7072abf4e4f86b2b31bc52dbdc48f4adfaf49056b3de071fe5a"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.0/omni_darwin_arm64.tar.gz"
      sha256 "cf8ec3e9ee397a8ded6bee144bae38a4600406b34d2e5e9a879a0df8319076a2"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.0/omni_linux_x86_64.tar.gz"
      sha256 "fb15560cd618c5681b4b750eaadc8eed4c973b9ae9cbfc2bb8a9d09cd8639584"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.0/omni_linux_arm64.tar.gz"
      sha256 "d14b0a52c87520cdafb42e0d0d7b843667f616a164fbd1395e9446c92ce9fd18"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
