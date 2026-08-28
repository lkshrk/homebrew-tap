# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.42"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.42/omni_darwin_x86_64.tar.gz"
      sha256 "d796f1588999370c136578518e172f803184c2ec88af35b6497a1b49893893a4"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.42/omni_darwin_arm64.tar.gz"
      sha256 "a97119a53cb02bace972be9e085f66f6f053675e1ca39a809eb80e7a45b27fe7"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.42/omni_linux_x86_64.tar.gz"
      sha256 "64303e81d0315a5553c53c0bbaf31ee55ef50c45bebf3210fd6cb95d34eb0d69"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.42/omni_linux_arm64.tar.gz"
      sha256 "cced5d2be4324bb64b90f2b2610360811e5de72c2af32ccfb45c5feb46fadbe3"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
