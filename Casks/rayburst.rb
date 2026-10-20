cask "rayburst" do
  arch arm: "aarch64", intel: "x64"

  version "4.1.0"
  sha256 arm:   "4b5ab1d9ae2d845a28ab21a3d48fb61c5aca566988eddf4ef7523275732ab481",
         intel: "8245620103c707f645472607dc32891e7d81d0921f93ad8ceabac5a9bfc76488"

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
