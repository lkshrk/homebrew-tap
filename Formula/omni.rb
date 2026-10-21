# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.11.3"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.3/omni_darwin_x86_64.tar.gz"
      sha256 "67d7cd25cac86f4f45ed6fac5be6980892c921a0ef9fedb6352358a158d8c99e"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.3/omni_darwin_arm64.tar.gz"
      sha256 "453068339fc73c13e75efeb0320374c2f1e0e2282ec4a7479a5dc0116d9f70b4"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.3/omni_linux_x86_64.tar.gz"
      sha256 "c647781abe0f6d91571bf48eb0078def49fcd118401d82aa22eef0a6c6347349"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.11.3/omni_linux_arm64.tar.gz"
      sha256 "825451760a04d44c71603d0ffddda4a3900d7c83b3a0f45b472592d9c7b4657f"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
