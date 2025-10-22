cask "snip-diff" do
  version "2025.10.10"
  sha256 "3b1bdb2954ad5b5e64b8c03f6eaace8b948c92a8ea5ed5b4da036917b7715e3a"

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
