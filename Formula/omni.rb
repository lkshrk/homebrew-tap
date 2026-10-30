# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.12.0"
  license "MIT"

  depends_on "stow"
  depends_on "git"
  depends_on "uv"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.12.0/omni_darwin_x86_64.tar.gz"
      sha256 "0bebe90ba621db13423619643389bac240f1c57854b674e568bfd20007d6f767"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.12.0/omni_darwin_arm64.tar.gz"
      sha256 "a576d58e8f6309a5e965ba4df9d8adc6e7fc99771de7700556e2c1403bc044d4"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.12.0/omni_linux_x86_64.tar.gz"
      sha256 "828703ce0b085a5e0f1db858bfbc8f6e6347729ea6fffa9ccafbb2b0d46677e8"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.12.0/omni_linux_arm64.tar.gz"
      sha256 "4c275d4bb9e42f350830c9e93d2b4a6f402e306203a7168d5bb2f11929524b73"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
