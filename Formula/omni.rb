# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.10.4"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.4/omni_darwin_x86_64.tar.gz"
      sha256 "c50160273f9577c7a89798334df13f25991f2dba3a04b7270053a0c3920811bf"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.4/omni_darwin_arm64.tar.gz"
      sha256 "ecda5c0a7e89ac4a1c2a322390ea0b834271d7229c23dfdc26773b2b9fe57075"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.4/omni_linux_x86_64.tar.gz"
      sha256 "5912f91009cb16abf4f792470d869c1298b79f3d7f969a32fd91f6f769a3af07"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.4/omni_linux_arm64.tar.gz"
      sha256 "2701a0f4eddd8520f8f3a896a604a1f97e7042ecf7cd660bcc813ce2544c6130"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
