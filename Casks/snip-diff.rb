cask "snip-diff" do
  version "2025.10.15"
  sha256 "47f90cc9dfb2dc7275930ea8fe8d1d5c9be725dda14877326718ab0fde63beb3"

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
