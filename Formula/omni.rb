# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.32"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.32/omni_darwin_x86_64.tar.gz"
      sha256 "c326877a357292969ad0a92e3f813466b312c681ebcc2d40a2edf8df587011cc"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.32/omni_darwin_arm64.tar.gz"
      sha256 "ecabe82026088e3d37a56f828c2d8ae7cb223332837d1f1ef2a5b044ca9f30fc"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.32/omni_linux_x86_64.tar.gz"
      sha256 "9d2369d5f73622834fb8cf7f15baf2ac5417274a9f49856cf380a8758ad8dbaf"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.32/omni_linux_arm64.tar.gz"
      sha256 "64c9e1997b5b5a48a0067344bb154c61d90db0b560a6cddc978ba3d3f3c441cb"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
