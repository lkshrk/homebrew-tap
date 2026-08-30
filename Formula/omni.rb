# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.10.6"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.6/omni_darwin_x86_64.tar.gz"
      sha256 "618593eb4e3f7778072a50a55f1c636b0025e3ffceff076ad7ccfb7437df6f9a"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.6/omni_darwin_arm64.tar.gz"
      sha256 "04ff84de5d4451317b02be0f5d49767bde5af1941b40add388b0391c5de409ab"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.6/omni_linux_x86_64.tar.gz"
      sha256 "4e6bf9c57d1d0697ef7c765d45ec542e67c283c16406b4854227a89c6efc8856"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.6/omni_linux_arm64.tar.gz"
      sha256 "407d175271a091134112b8583142a26d729d6346cf54bd697ce803fc73c538f4"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
