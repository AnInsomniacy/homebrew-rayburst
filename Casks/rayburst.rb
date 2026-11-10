cask "rayburst" do
  arch arm: "aarch64", intel: "x64"

  version "4.1.2"
  sha256 arm:   "f48837251290f00922595b1d9d0f9f5fa6b1524bffc71ca6ddca1787051bc403",
         intel: "57871b1512197f9db35089f14265be0172322760b3ef9fab85b12b3cee600c30"

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
