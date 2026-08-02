cask "tokentracker" do
  version "0.87.9"
  sha256 "443a7c9ca256cdcce70d7c9066ca485d67f651866f067a3e9073c8625305d9e8"

  url "https://github.com/xiufengsun/TokenTracker/releases/download/v#{version}/TokenTrackerBar.dmg"
  name "TokenTracker"
  desc "Local-first AI token usage tracker menu bar app"
  homepage "https://github.com/xiufengsun/TokenTracker"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "TokenTracker.app"

  zap trash: [
    "~/Library/Application Support/TokenTrackerBar",
    "~/Library/Caches/me.rynn.TokenTrackerBar",
    "~/Library/Preferences/me.rynn.TokenTrackerBar.plist",
    "~/Library/Saved Application State/me.rynn.TokenTrackerBar.savedState",
    "~/.tokentracker",
  ]
end
