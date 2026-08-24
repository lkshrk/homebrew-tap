# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.37"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.37/omni_darwin_x86_64.tar.gz"
      sha256 "dcc6f8fc19acdc22a98d92408bcc19eef8b6d480b2651d465a7c0e5fb20bba57"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.37/omni_darwin_arm64.tar.gz"
      sha256 "a60f11b31367985c49c443f05ba13251fbd725464cb43a8aa4861b0276b1a14e"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.37/omni_linux_x86_64.tar.gz"
      sha256 "54e9d6af0fe86cc50c30bab5203999e5c12d33ef7dfcbe54718c831f55e6b45a"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.37/omni_linux_arm64.tar.gz"
      sha256 "4924bfca76d232178445b9f10efec19c5a012b6ee107e12712e37ab40618ed2d"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
