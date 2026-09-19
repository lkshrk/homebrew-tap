cask "bam" do
  version "1.0.8"
  sha256 "b0e2b89df197244becb2e0d714246b5ebb817c9230ec073220935d6ad6f3d1fd"

  url "https://github.com/lkshrk/better-audio-mixer/releases/download/v#{version}/bam.zip"
  name "bam"
  desc "Per-app audio mixer and router for macOS"
  homepage "https://github.com/lkshrk/better-audio-mixer"

  depends_on macos: :sonoma

  app "bam.app"

  zap trash: [
    "~/Library/Preferences/me.harke.bam.plist",
    "~/Library/Application Support/bam",
  ]
end
