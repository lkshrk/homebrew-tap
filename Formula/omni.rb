# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.20"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.20/omni_darwin_x86_64.tar.gz"
      sha256 "8d357f8d6a00fb032d6bcd1cb2a2d4ff0f207a8fd974ae52bdacfbaa928bb4e9"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.20/omni_darwin_arm64.tar.gz"
      sha256 "783e53c033e79a159f7a4ebc3766687429cbdf38a1276c740bca8a64843bf5fa"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.20/omni_linux_x86_64.tar.gz"
      sha256 "60724ad8020207bca3580c667a3b1c824f2affc76ec08004fdffeba4d7d898ad"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.20/omni_linux_arm64.tar.gz"
      sha256 "39369eb91d10571f93949c1735e89260dd0a7d51df1f31c738284af3828c6e9b"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
