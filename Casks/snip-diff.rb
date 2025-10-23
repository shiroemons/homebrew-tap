cask "snip-diff" do
  version "2025.10.13"
  sha256 "c316d2710b8cd29563f90643491f956dc135d07cc83bc7ea3e8d81c4d299778c"

  url "https://github.com/shiroemons/snip_diff/releases/download/v#{version}/SnipDiff-#{version}-universal.dmg"
  name "SnipDiff"
  desc "GitHub-like diff viewer for unsaved text"
  homepage "https://github.com/shiroemons/snip_diff"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SnipDiff.app"

  zap trash: [
    "~/Library/Application Support/SnipDiff",
    "~/Library/Preferences/com.snipdiff.app.plist",
    "~/Library/Saved Application State/com.snipdiff.app.savedState",
  ]
end
