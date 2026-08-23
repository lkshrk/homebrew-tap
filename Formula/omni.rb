# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.35"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.35/omni_darwin_x86_64.tar.gz"
      sha256 "2284668bfddee2c3598e6ff47aba4a96d6015f53417ecdbb294d4269be76855f"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.35/omni_darwin_arm64.tar.gz"
      sha256 "5fa0b70ed8e9a727a38d83e06201904504d18a3987f45f03b28496a80d351a07"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.35/omni_linux_x86_64.tar.gz"
      sha256 "509c510c5b98cb81812b72ac5d8ba0e10b052078e49e61e17e1d807d8cb79726"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.35/omni_linux_arm64.tar.gz"
      sha256 "6c1bdaa05a442ebc26320a70d7c6409ee955f4d38738afc89f28679c777fe9a2"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
