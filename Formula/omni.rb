# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.10.7"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.7/omni_darwin_x86_64.tar.gz"
      sha256 "fce6f9e1a077aef0ce1edf57a134c0ec90bb29d5d198ec855aa93648e6add68c"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.7/omni_darwin_arm64.tar.gz"
      sha256 "11f9cb009f271549e321a3b01b06bb29b3e839ac5413a3d5abe9839ac4f5be37"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.7/omni_linux_x86_64.tar.gz"
      sha256 "d9c6799b2435bd9001fa6ba6e7218fd29f15fd2abf555a72350a7a33ae80a9bd"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.7/omni_linux_arm64.tar.gz"
      sha256 "bb186eff667d9bdfe335497d22ef47b9f578d3aebe7e1cf93d053f5a61250cfa"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
