cask "bam" do
  version "0.9.7"
  sha256 "4bfee832972a461fb7b47ec02cbe9681529616bb8985d8f0334d4a2bca3e5fba"

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
