cask "d-streamy" do
  version "1.0.1"
  sha256 "91b2d6a8229daa62918296408f1c147378fef234cc7223747ceadcab4d8203d6"

  url "https://github.com/lkshrk/d-streamy/releases/download/v#{version}/D-Streamy.zip"
  name "D-Streamy"
  desc "Menu bar app that streams any macOS window to a Discord voice channel"
  homepage "https://github.com/lkshrk/d-streamy"

  # Native daemon addons ship as darwin-arm64 only.
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "D-Streamy.app"

  zap trash: [
    "~/Library/Preferences/me.harke.d-streamy.plist",
    "~/Library/Logs/D-Streamy",
  ]
end
