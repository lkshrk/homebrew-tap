# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.11.1"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.1/omni_darwin_x86_64.tar.gz"
      sha256 "930c475408e6ef3cbea3fc65191509ad5c8c8c67c170f14d4553455e895709b6"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.1/omni_darwin_arm64.tar.gz"
      sha256 "61e9fb1f5e8d7b49a019c7bbd39f4b848b5be3fa6cff1355c1c1984f1408923b"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.1/omni_linux_x86_64.tar.gz"
      sha256 "1d91a6aa87eff071698743f5f62fa2f5cf94d98dd6e6ba20a936076c216694a3"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.1/omni_linux_arm64.tar.gz"
      sha256 "185101b4526d7f50b99ab572563d6c56962c516f537d0e8e7aaaf82c1e86a711"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
