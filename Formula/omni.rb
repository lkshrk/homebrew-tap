# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.11.2"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.2/omni_darwin_x86_64.tar.gz"
      sha256 "5996fd9e616ba6c1010c68352717eae7fdfb4ce83aec7c572ba130c4db1d77e7"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.2/omni_darwin_arm64.tar.gz"
      sha256 "97714f0c70a8bf532d94695ce641e11a0156e051bc01aae014ebe8efa2e29999"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.2/omni_linux_x86_64.tar.gz"
      sha256 "f3f8b13298edefeddb72ce83c57dddf274b0fec97e7bcdc5e4d41bfc4bd6d0de"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.2/omni_linux_arm64.tar.gz"
      sha256 "bdb962a1fd5a692f43edb1bc895dc5c530166cae09b37191decb77c46a68299e"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
