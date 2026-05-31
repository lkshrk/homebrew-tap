cask "bam" do
  version "0.9.8"
  sha256 "2384dd73861b94fc1066e764813891a11e6e309e549c925926fcee59e18b0a56"

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
