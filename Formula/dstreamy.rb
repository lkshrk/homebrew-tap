class Dstreamy < Formula
  desc "Stream a window or display to a Discord voice channel"
  homepage "https://github.com/lkshrk/d-streamy"
  version "2.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/lkshrk/d-streamy/releases/download/v#{version}/dstreamy-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "a57cb0e320a7dfdb1fc2e9f9194e3ba9052208674d1326d3117f04ee04a3d67f"
  else
    url "https://github.com/lkshrk/d-streamy/releases/download/v#{version}/dstreamy-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "30377188a445847a4d43794d0e1360d1a95cafea28929a3a05176e727e2d2f40"
  end

  depends_on macos: :sonoma

  def install
    bin.install "dstreamy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dstreamy --version")
  end
end
