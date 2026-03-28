cask "snapocr" do
  version "0.1.3"
  sha256 "44dde871f5a825a9bdf0f353d4e61ee9522a29dba1dc2af97959efa279f114b7"

  url "https://github.com/shiroemons/snapocr/releases/download/v#{version}/SnapOCR-#{version}.dmg"
  name "SnapOCR"
  desc "OCR screen text via global hotkey and copy to clipboard"
  homepage "https://github.com/shiroemons/snapocr"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "SnapOCR.app"

  zap trash: [
    "~/Library/Application Support/SnapOCR",
    "~/Library/Preferences/com.shiroemons.snapocr.plist",
    "~/Library/Caches/com.shiroemons.snapocr",
  ]
end
