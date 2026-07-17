# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.11"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.11/omni_darwin_x86_64.tar.gz"
      sha256 "011bed7237983f532eb0e10566017e4634bd7199cf688b60f6ce7e3e823e83f5"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.11/omni_darwin_arm64.tar.gz"
      sha256 "395372b8daae56419903541a5fb4c009fd03de86b4dc8696e68f4043043fbd1c"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.11/omni_linux_x86_64.tar.gz"
      sha256 "bf8ca1d627af86bd49eb7436e9da93bc2f9bdd6d990977931efcaef98b200113"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.11/omni_linux_arm64.tar.gz"
      sha256 "ce3d2c018254401a2c64fa3ba1c159781f2d56afa6b1bdad91480f51259d13d8"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
