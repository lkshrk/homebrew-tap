class Dstreamy < Formula
  desc "Stream a window or display to a Discord voice channel"
  homepage "https://github.com/lkshrk/d-streamy"
  version "2.0.2"

  if Hardware::CPU.arm?
    url "https://github.com/lkshrk/d-streamy/releases/download/v#{version}/dstreamy-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "767d97dcd1e228420f3ba91d808b1b12a439232ff31daf9db75e0b22530d5b58"
  else
    url "https://github.com/lkshrk/d-streamy/releases/download/v#{version}/dstreamy-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "2c584b935c12cb474b497d094d218c82e72953faf9004ef33625c5116d7144e8"
  end

  depends_on macos: :sonoma

  def install
    bin.install "dstreamy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dstreamy --version")
  end
end
