class Dstreamy < Formula
  desc "Stream a window or display to a Discord voice channel"
  homepage "https://github.com/lkshrk/d-streamy"
  version "2.0.1"

  if Hardware::CPU.arm?
    url "https://github.com/lkshrk/d-streamy/releases/download/v#{version}/dstreamy-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "08f80fef959b4d84e2c293c2dcb1056df96b93f1f07b23fb79d58523151733d5"
  else
    url "https://github.com/lkshrk/d-streamy/releases/download/v#{version}/dstreamy-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "7335f7af7483c6ace1e4bcfed45597da6a37a5701561842dfc310245c296d9b7"
  end

  depends_on macos: :sonoma

  def install
    bin.install "dstreamy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dstreamy --version")
  end
end
