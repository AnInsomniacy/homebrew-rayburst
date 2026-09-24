cask "rayburst" do
  arch arm: "aarch64", intel: "x64"

  version "4.0.0"
  sha256 arm:   "1f1f30c63f23fa052fe561911ede8e163b05e01b6318078fd91f87414baaabe2",
         intel: "5dd0281b0f05a0dd54683703dd1d3b3936612667d9ad1258ba91d0d9f6f6d89a"

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
