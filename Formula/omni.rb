# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.36"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.36/omni_darwin_x86_64.tar.gz"
      sha256 "341bf1b9b339112d9098f0e5b6cc45402a0cdf7551bb5eee7826135a61f246de"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.36/omni_darwin_arm64.tar.gz"
      sha256 "42245ab569818620c7634cb6df8c1b23adf43725a55ec7c856ff8c83d9ba0e0f"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.36/omni_linux_x86_64.tar.gz"
      sha256 "1f24e01b8a9daacd37b18cea9edf5dea81bc1fe00e75e56c29e6877592279b82"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.36/omni_linux_arm64.tar.gz"
      sha256 "eb3920c6cf6ff18911ee9bb4266ee6be321fda1371756495751f39329f871cc6"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
