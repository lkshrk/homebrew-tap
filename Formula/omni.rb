# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.10.12"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.12/omni_darwin_x86_64.tar.gz"
      sha256 "decf63c81c2cfdc5f824f1e3f369835da88c02950b51ac548eaf1112c1a696f2"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.12/omni_darwin_arm64.tar.gz"
      sha256 "21a286eccf82884236eef2e08d9de0457a574841187e46dc1bca50bb5feca78b"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.12/omni_linux_x86_64.tar.gz"
      sha256 "e31cbcaaeaa45eee31cee4049048b941b5768d3075d9f1d766b165cce00410c8"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.12/omni_linux_arm64.tar.gz"
      sha256 "2b1f49eac941fb87820d764b09a93a9ab18b06df68af87fadf3c8d5f858ea8ce"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
