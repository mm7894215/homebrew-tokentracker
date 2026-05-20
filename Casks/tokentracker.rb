cask "tokentracker" do
  version "0.18.0"
  sha256 "c2d30a9ae02c681cda7dfc1666fe52d0c9da933b90034fbe8e21bc79e549e32a"

  url "https://github.com/mm7894215/TokenTracker/releases/download/v#{version}/TokenTrackerBar.dmg"
  name "TokenTracker"
  desc "Local-first AI token usage tracker menu bar app"
  homepage "https://github.com/mm7894215/TokenTracker"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "TokenTrackerBar.app"

  zap trash: [
    "~/Library/Application Support/TokenTrackerBar",
    "~/Library/Caches/me.rynn.TokenTrackerBar",
    "~/Library/Preferences/me.rynn.TokenTrackerBar.plist",
    "~/Library/Saved Application State/me.rynn.TokenTrackerBar.savedState",
    "~/.tokentracker",
  ]
end
