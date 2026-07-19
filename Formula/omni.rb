# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.21"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.21/omni_darwin_x86_64.tar.gz"
      sha256 "dd61ac0292d161d0ab78474ae0fa74c8876f4df14a4366b62798ce6a85dda657"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.21/omni_darwin_arm64.tar.gz"
      sha256 "b0955285c3e9812d9ddac7b95496f56b8e604cc70e189469ef24f5072a10c9ba"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.21/omni_linux_x86_64.tar.gz"
      sha256 "d9c9802414077dea25e04f51288f1f0253f9a720d49fcbb10669bd092737cb43"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.21/omni_linux_arm64.tar.gz"
      sha256 "ea1e0331c212a08c403037ef11237e6533bb461a42e25c0c8bde9bfe69018714"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
