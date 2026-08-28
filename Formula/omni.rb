# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.39"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.39/omni_darwin_x86_64.tar.gz"
      sha256 "f9826cba25b871a4f56c6783d2c5bbcd97c2e8989af24678669125b3df4d9c84"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.39/omni_darwin_arm64.tar.gz"
      sha256 "97b95742e4a2580a3d69511be01d0b8a75afb3148766df490dd8ed4024ec80c1"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.39/omni_linux_x86_64.tar.gz"
      sha256 "119d58f0cfe4da043093f4c4d676306b867fcb3e3419e97084d78e878413dca8"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.39/omni_linux_arm64.tar.gz"
      sha256 "20fc01729d31eab0cc5e9afbef44ae7ffa7129866af02aa602f826fd6c722b37"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
