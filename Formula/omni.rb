# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.10.16"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.16/omni_darwin_x86_64.tar.gz"
      sha256 "367c6ce621c6bd2ac9ac1c14d37d5f563d8057c547595e2561e71f341d4c1764"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.16/omni_darwin_arm64.tar.gz"
      sha256 "d4509d5d825c5e317a5f2e8f579282b9332b3a05b198154fcfdf2c6f0b978a96"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.16/omni_linux_x86_64.tar.gz"
      sha256 "5afb338856581063d40f06236899b57cfd270e621a1f06a345692c4974fafe7e"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.16/omni_linux_arm64.tar.gz"
      sha256 "61749a914e4721a6b35ad858d272ae7ea43721ecefa83ae8f76c80a62f498484"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
