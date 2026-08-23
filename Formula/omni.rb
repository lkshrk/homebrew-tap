# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.33"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.33/omni_darwin_x86_64.tar.gz"
      sha256 "ac5edb3d84939e572ed4fc6b9b158b1f029365ac1daaf6f269296c6beea50713"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.33/omni_darwin_arm64.tar.gz"
      sha256 "1b4bb9a40d1ee17cb48df5803e5e6a228e08251d9b7574950420ce22ac904261"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.33/omni_linux_x86_64.tar.gz"
      sha256 "130b84a0f0ce79ec701adc13c93e245f5c4e373e1cc2045af4fa43b8cf169973"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.33/omni_linux_arm64.tar.gz"
      sha256 "dd2a74860d9e2ae18353a6f4523dda8ab3a2ff875642cbf9f82d1ebda6f3e1aa"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
