# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.13"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.13/omni_darwin_x86_64.tar.gz"
      sha256 "f14f932332cfb011929ece1969e5205c76512765fcea7f42ab1f79c905e743e5"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.13/omni_darwin_arm64.tar.gz"
      sha256 "d8538e20ffa72f2ee18c88325e14504af066224f1aa53c6ad4bd7183868d829d"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.13/omni_linux_x86_64.tar.gz"
      sha256 "8cdd46c856240ad32bab62a9a9d32c546ad0eb941e51d27f28fffc40bf0405d7"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.13/omni_linux_arm64.tar.gz"
      sha256 "886ce01a42d0fe609cf99f201b3b38be4f27337dd8460387922ee4ce8aec6519"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
