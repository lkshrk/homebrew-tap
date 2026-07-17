# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.14"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.14/omni_darwin_x86_64.tar.gz"
      sha256 "e59a3ed02d6b75ce7928513d7799f21d6b485330e6267b673e7e77809fcb4104"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.14/omni_darwin_arm64.tar.gz"
      sha256 "b24091f876c6951080b9a04c09f24c54b38e9ea4c98e90acb13e42922d82c5a3"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.14/omni_linux_x86_64.tar.gz"
      sha256 "9878b2bf73f7dd83afad26e250a7a7269b1b612bdca912dd07ea4b2099d7e263"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.14/omni_linux_arm64.tar.gz"
      sha256 "dd8dc910a607aec67cb3d449243470e673a202c0786e5a39c382cefce1835208"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
