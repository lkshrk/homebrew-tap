# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.11.0"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.0/omni_darwin_x86_64.tar.gz"
      sha256 "f9bfc92079194ab0c38cdfa91a330bec112c6fb217d0ef4f089ccb949b247cf2"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.0/omni_darwin_arm64.tar.gz"
      sha256 "46db2408e785f68efba77b8ecaabba00bf555da1d3a5bd1e20fadbcfe161badd"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.0/omni_linux_x86_64.tar.gz"
      sha256 "a1465d00d200bc6b9a392b7787dce95c5589f984fec4a34bc834d82b7fe21805"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.0/omni_linux_arm64.tar.gz"
      sha256 "7f1924d593a7409cc48f5634369a17bc29b055dd15ed27f31327a2cebbecaac9"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
