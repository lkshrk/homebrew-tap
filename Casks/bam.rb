cask "bam" do
  version "1.0.2"
  sha256 "e169df646eec7da4f624ff31c067c93084629585da9770251a3a6874c0350003"

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
