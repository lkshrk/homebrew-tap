cask "bam" do
  version "1.0.0"
  sha256 "4f59772559592ccd8e3f382389668cb5a3f30b2125513b61b2eb94ce79f48fda"

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
