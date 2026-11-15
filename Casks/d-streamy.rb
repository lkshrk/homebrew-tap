cask "d-streamy" do
  version "2.0.2"
  sha256 "14492e21084fd1591ec3bdb22788d6e63691c8d8dca7880b16acab93a4d477af"

  url "https://github.com/lkshrk/d-streamy/releases/download/v#{version}/D-Streamy-#{version}-macos-universal.zip"
  name "D-Streamy"
  desc "Menu bar app that streams any macOS window to a Discord voice channel"
  homepage "https://github.com/lkshrk/d-streamy"

  depends_on macos: :sonoma

  app "D-Streamy.app"

  # The dstreamy CLI and the OBS plugin share this config dir, so zap removes their accounts too.
  zap trash: [
    "~/Library/Application Support/me.harke.dstreamy",
    "~/Library/Preferences/me.harke.d-streamy.plist",
  ]
end
