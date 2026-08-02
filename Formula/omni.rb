# typed: false
# frozen_string_literal: true

class Omni < Formula
  desc "Manage all your dev tools from a single JSON config file."
  homepage "https://github.com/lkshrk/omni"
  version "0.9.30"
  license "MIT"

  depends_on "stow"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.30/omni_darwin_x86_64.tar.gz"
      sha256 "3ca1cc8a6de35c52edbe0d0a860cac842d49dd2f2307ef693387e328b05fb70e"

      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.30/omni_darwin_arm64.tar.gz"
      sha256 "ee3b0bd2aa9b876a73d933987ecc18c8cf5546b9182586be5f22392fc06437fc"

      def install
        bin.install "omni"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.30/omni_linux_x86_64.tar.gz"
      sha256 "253ea927dc844777916635ed806ce69a521553d47cf6bb98b1605f9d7ebcbcfc"
      def install
        bin.install "omni"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lkshrk/omni/releases/download/v0.9.30/omni_linux_arm64.tar.gz"
      sha256 "c315e166b73658b31b463ce0cdf288319ff5b1892d60bb242d51225c56560874"
      def install
        bin.install "omni"
      end
    end
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
