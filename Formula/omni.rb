# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.19"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.19/omni_darwin_x86_64.tar.gz"
      sha256 "b8bfd7fadceeea3e6e596eecfefadbbdadcf81e04071456502ad666efdde4389"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.19/omni_darwin_arm64.tar.gz"
      sha256 "15f4d27e46da2c6c7aa513fdf0fc998a5644aafbf94889341e22777727fd85c2"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.19/omni_linux_x86_64.tar.gz"
      sha256 "f8c231bfc17f7914e80865457402cba598f32c0146e4fa0aa11a4a089b0240dc"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.19/omni_linux_arm64.tar.gz"
      sha256 "608479c5557ae3af0e8fe48310e26e243d5f2ba02bbdf8562ffda780b09462af"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
