# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.10.5"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.5/omni_darwin_x86_64.tar.gz"
      sha256 "4648291e90db144c0dd078abc4fdff352c18a6ea94521a81adc7f71e3b9b9317"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.5/omni_darwin_arm64.tar.gz"
      sha256 "36a0c7b0a446b8a0f40e806bb009f47dd86dea39715daf1a12a1f9fa49a68d35"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.5/omni_linux_x86_64.tar.gz"
      sha256 "1f2c556eaba576e5152b73106bc3757451c8da0d54b8bc418606f764f86d66b2"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.5/omni_linux_arm64.tar.gz"
      sha256 "2b4adb1eb6bd535de895fd1a52044ab9b70992f01746b28f2e6539f7d65bcd31"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
