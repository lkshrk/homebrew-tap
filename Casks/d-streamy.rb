cask "d-streamy" do
  version "2.0.1"
  sha256 "791b45d5181206ca59100870e7e71340c340ffd4f02b7f7fee253bb7c97f8def"

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
