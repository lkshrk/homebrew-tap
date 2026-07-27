# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.24"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.24/omni_darwin_x86_64.tar.gz"
      sha256 "c5ad81d1f46b436d85aabb96165451040f2c1c7ebc632be55818e6cf881a2de9"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.24/omni_darwin_arm64.tar.gz"
      sha256 "834205e3354ea617e467c860e8fcbf3c91df44e4ceff55535d1a989788d00aba"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.24/omni_linux_x86_64.tar.gz"
      sha256 "f0f0de5994894665d759bdfbd171c54cf962d714c94530bf6179ac0c6ec368ed"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.24/omni_linux_arm64.tar.gz"
      sha256 "7c2a0d8f689518af43cd818fea08c2fa698ca94005a6f542881e259baaf255be"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
