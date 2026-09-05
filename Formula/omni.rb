# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.10.15"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.15/omni_darwin_x86_64.tar.gz"
      sha256 "aa05e090965f78d7860f67f561710a2d454a82441841a0722a16ff5f68469ecb"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.15/omni_darwin_arm64.tar.gz"
      sha256 "bf9cbe4600b6a2c100797e513bf584d2ec216fb00c6a73121bc8d503abfc8940"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.15/omni_linux_x86_64.tar.gz"
      sha256 "4bc6b20e5b578172949163fd6396ed5cee55a9853c55186b5acfda1fb3937047"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.15/omni_linux_arm64.tar.gz"
      sha256 "44a92fc14487ad3e84c86a7b58fc3f51eadf09d937128019003495ac0a1fffaf"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
