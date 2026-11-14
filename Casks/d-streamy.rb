cask "d-streamy" do
  version "2.0.0"
  sha256 "3c99ef5101a07fe9bca4ed211ab6300f3427edb91a978e810011b9230c3c2488"

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
