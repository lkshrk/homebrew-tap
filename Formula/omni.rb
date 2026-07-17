# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.17"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.17/omni_darwin_x86_64.tar.gz"
      sha256 "99e1a34613be3e36cd2a7c1ff0382653cc0321ddd8e049d7c1fe41248e9435eb"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.17/omni_darwin_arm64.tar.gz"
      sha256 "7f1194d4b0634ef36cbb14441fb18f36d6c0fe6d759598d9e74ddf26f0567e4e"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.17/omni_linux_x86_64.tar.gz"
      sha256 "35c931e6896e39832ec5a0268b90584658fc028b15ccbcc752a2bbb8c1957564"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.17/omni_linux_arm64.tar.gz"
      sha256 "1a673463844da93a4bba109ce7c0992d1cf3d63b10371f62e6f1b9204fa7323b"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
