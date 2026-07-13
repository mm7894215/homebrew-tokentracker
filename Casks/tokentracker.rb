cask "tokentracker" do
  version "0.79.0"
  sha256 "0125878881ba7788abd0d9d845c23992adabf25d7ba5a215ab42ea42a7423dc9"

  url "https://github.com/mm7894215/TokenTracker/releases/download/v#{version}/TokenTrackerBar.dmg"
  name "TokenTracker"
  desc "Local-first AI token usage tracker menu bar app"
  homepage "https://github.com/mm7894215/TokenTracker"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "TokenTrackerBar.app"

  zap trash: [
    "~/Library/Application Support/TokenTrackerBar",
    "~/Library/Caches/me.rynn.TokenTrackerBar",
    "~/Library/Preferences/me.rynn.TokenTrackerBar.plist",
    "~/Library/Saved Application State/me.rynn.TokenTrackerBar.savedState",
    "~/.tokentracker",
  ]
end
