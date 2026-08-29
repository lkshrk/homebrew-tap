# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.10.1"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.1/omni_darwin_x86_64.tar.gz"
      sha256 "490cf6a871c2695e3837a64545755d346fdf5c61c3a27e5d3e4b12f65bae16b9"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.1/omni_darwin_arm64.tar.gz"
      sha256 "d5d6185613e97a26a54cd09425470c5e063ea428fb93f55469584329bda79327"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.1/omni_linux_x86_64.tar.gz"
      sha256 "f1799bd89520d139cc4569c0246561b704e95820da5c212ccc154fd2afe009a8"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.10.1/omni_linux_arm64.tar.gz"
      sha256 "757eb7234c599d1544888a8e59adf96401e893d50e353fddbb6e3e27f5c17038"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
