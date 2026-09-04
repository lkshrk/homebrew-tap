# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.10.14"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.14/omni_darwin_x86_64.tar.gz"
      sha256 "a9dbfc67ceee16689765697dc45ff71039c0b06f87c3525120c5f143e4b8b9c5"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.14/omni_darwin_arm64.tar.gz"
      sha256 "85bffc6ceadc29f6a46669a49c1691835983c3f79fb21a29044b668e63706807"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.14/omni_linux_x86_64.tar.gz"
      sha256 "21cfa33001eef4ca08dde549ae5fff3459e7d866d3fda9044e7f0f8bbe497ec9"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.14/omni_linux_arm64.tar.gz"
      sha256 "ee83b488e86d4cb92ce70d4b61f220def4d41fe91755e69e4a5d74e557c35b1a"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
