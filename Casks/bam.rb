cask "bam" do
  version "0.9.5"
  sha256 "1cfa07db5d73ffe4810eec50870eeab2e67a941cf7b142f8dfeaa6ad13600e5f"

  url "https://github.com/lkshrk/better-audio-mixer/releases/download/v#{version}/bam.zip"
  name "bam"
  desc "Per-app audio mixer and router for macOS"
  homepage "https://github.com/lkshrk/better-audio-mixer"

  depends_on macos: ">= :sonoma"

  app "bam.app"

  zap trash: [
    "~/Library/Preferences/me.harke.bam.plist",
    "~/Library/Application Support/bam",
  ]
end
