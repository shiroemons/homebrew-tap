cask "snapocr" do
  version "1.1.1"
  sha256 "ac9fd77eb9ec95bb354a27b6225b58aa0098d3c317cc04ac4e03209c0a15bea1"

  url "https://github.com/shiroemons/snapocr/releases/download/v#{version}/SnapOCR.dmg"
  name "SnapOCR"
  desc "OCR screen text via global hotkey and copy to clipboard"
  homepage "https://github.com/shiroemons/snapocr"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "SnapOCR.app"

  zap trash: [
    "~/Library/Application Scripts/com.shiroemons.snapocr",
    "~/Library/Caches/com.shiroemons.snapocr",
    "~/Library/Containers/com.shiroemons.snapocr",
    "~/Library/HTTPStorages/com.shiroemons.snapocr",
    "~/Library/Preferences/com.shiroemons.snapocr.plist",
  ]
end
