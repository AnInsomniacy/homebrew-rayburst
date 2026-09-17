cask "rayburst" do
  arch arm: "aarch64", intel: "x64"

  version "4.0.0-beta.1"
  sha256 arm:   "c1e613bf37cdd6f41de1ef5c6431326b44d05ddcde56762ffe95331227c5af97",
         intel: "2545bcdc761519546e338a3b16f169187f429d3395a6a3b4d4c30ac4d764ea25"

  url "https://github.com/AnInsomniacy/rayburst/releases/download/v#{version}/Rayburst_#{arch}.app.tar.gz"
  name "Rayburst"
  desc "Download manager for files, torrents and streams"
  homepage "https://rayburst.pages.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Rayburst.app"

  uninstall quit: "dev.aninsomniacy.rayburst"

  zap trash: [
    "~/Library/Application Support/dev.aninsomniacy.rayburst",
    "~/Library/Application Support/Google/Chrome/NativeMessagingHosts/dev.aninsomniacy.rayburst.browser.json",
    "~/Library/Application Support/Microsoft Edge/NativeMessagingHosts/dev.aninsomniacy.rayburst.browser.json",
    "~/Library/Application Support/Mozilla/NativeMessagingHosts/dev.aninsomniacy.rayburst.browser.json",
    "~/Library/Caches/dev.aninsomniacy.rayburst",
    "~/Library/Logs/dev.aninsomniacy.rayburst",
    "~/Library/Preferences/dev.aninsomniacy.rayburst.plist",
    "~/Library/Saved Application State/dev.aninsomniacy.rayburst.savedState",
    "~/Library/WebKit/dev.aninsomniacy.rayburst",
  ]
end
