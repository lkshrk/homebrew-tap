# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.12"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.12/omni_darwin_x86_64.tar.gz"
      sha256 "cee292ea811d2c4424fde56931f671c9b7da303df85f007b348fa72d5c1f8efd"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.12/omni_darwin_arm64.tar.gz"
      sha256 "b799e8d3aef6a8096a81efcdb25f9fa4c11a0971e11b0099b4982a02eb90a101"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.12/omni_linux_x86_64.tar.gz"
      sha256 "7efe94c74ee5d3372e547d381790ec8e60c78e26349ff995990c8e5977fbd55c"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.12/omni_linux_arm64.tar.gz"
      sha256 "1a1ff4ef6b656a0931ac71d14e3e7bcc91138c4997c996c0462607d6cd5e3a89"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
