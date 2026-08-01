# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.26"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.26/omni_darwin_x86_64.tar.gz"
      sha256 "27c74cbd43e0d24cb59f420fb73e89b6f0b7c47429eb031de58015e3b1b22ca5"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.26/omni_darwin_arm64.tar.gz"
      sha256 "be1f10b03fa971d1bbceed09baef477148771f5f03613f29c78361dc5b34d07b"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.26/omni_linux_x86_64.tar.gz"
      sha256 "88ac068ed244ca39c1743b500662378dbdf7f575f588b58001b1c28e588f4913"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.26/omni_linux_arm64.tar.gz"
      sha256 "7de11ab635ce587ec5b75839e6f5f4738dece0039a582ab2ddd53a93ead38db9"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
