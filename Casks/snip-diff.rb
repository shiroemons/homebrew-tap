cask "snip-diff" do
  version "2025.10.23"
  sha256 "a6c9bb36f376044b6698685525fb0a9a00b2e4ea32018533783d076d8495215d"

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
