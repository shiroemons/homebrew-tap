cask "snip-diff" do
  version "2026.10.1"
  sha256 "c286960a4a0ae83d272b6b859c0ad0fd00e0a1eb6f91f9b34f8f5bc2c6ab4073"

  url "https://github.com/shiroemons/snip_diff/releases/download/v#{version}/SnipDiff-#{version}-universal.dmg"
  name "SnipDiff"
  desc "GitHub-like diff viewer for unsaved text"
  homepage "https://github.com/shiroemons/snip_diff"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "SnipDiff.app"

  zap trash: [
    "~/Library/Application Support/SnipDiff",
    "~/Library/Preferences/com.snipdiff.app.plist",
    "~/Library/Saved Application State/com.snipdiff.app.savedState",
  ]
end
