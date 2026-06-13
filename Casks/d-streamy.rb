cask "d-streamy" do
  version "1.0.0"
  sha256 "4407844ed99042a9c155f7f8ae87ad5fb1cb16ac6769e54b382da334f30249ca"

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
