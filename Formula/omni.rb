# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.23"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.23/omni_darwin_x86_64.tar.gz"
      sha256 "5aa7d32df561640416a172670feb2949d9f97bdc2ddc34723e11cbfda814dc9b"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.23/omni_darwin_arm64.tar.gz"
      sha256 "1e488ad6737626d482387202a427a8f07ec9f7c5fea906409a7a1b00b2fa9f18"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.23/omni_linux_x86_64.tar.gz"
      sha256 "a31c8839f837947b3cf54c6213da7de4a25e73a2bda17a1120486e94288e6f50"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.23/omni_linux_arm64.tar.gz"
      sha256 "2a497c5ab3f172250ae8dd85d5ec24b5e4a3cdf6917269b8de8c6fbba21d5c2e"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
