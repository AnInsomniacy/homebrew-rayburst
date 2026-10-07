cask "rayburst" do
  arch arm: "aarch64", intel: "x64"

  version "4.0.1"
  sha256 arm:   "a1fcc806b74b940b43b3e71dbcb43e8cee56ab5a6a07ecdc4311d6b78f2df08c",
         intel: "1b1ebb7d1692bfc1a5b844343130fe4750975f208c4631969098f1a9c42aad2d"

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
