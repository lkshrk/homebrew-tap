# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.29"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.29/omni_darwin_x86_64.tar.gz"
      sha256 "9257b5dd30c8c107fb9005d71443d1ed8e2baeb06c9c537c4fe9373ecbcad925"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.29/omni_darwin_arm64.tar.gz"
      sha256 "9869f268a46c20503d73c4184400b9e41f31fb58fdac85a3a7fd666e5a3ed5b8"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.29/omni_linux_x86_64.tar.gz"
      sha256 "74930b64f41bb60b245b1a870f44b0168ba8bd243e834a2f46e8b5db528a1f3c"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.29/omni_linux_arm64.tar.gz"
      sha256 "096c62dab8cc8b04312b0045fd0a5cc620a68d4eac3c052ced98205f12b1ef66"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
