cask "bam" do
  version "1.0.7"
  sha256 "50cc8ec9a6a7dbf77e8acaf419ebf8970217c4cc61e569a5817ea2e885e3867d"

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
