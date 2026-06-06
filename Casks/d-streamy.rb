cask "d-streamy" do
  version "0.9.0"
  sha256 "c43261a66689510e69b327868c820964a51ea16067502640afc41345d53dd4c7"

  url "https://github.com/lkshrk/d-streamy/releases/download/v#{version}/D-Streamy.zip"
  name "D-Streamy"
  desc "Menu bar app that streams any macOS window to a Discord voice channel"
  homepage "https://github.com/lkshrk/d-streamy"

  # Native daemon addons ship as darwin-arm64 only.
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "D-Streamy.app"

  zap trash: [
    "~/Library/Preferences/me.harke.d-streamy.plist",
    "~/Library/Logs/D-Streamy",
  ]
end
