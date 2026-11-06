cask "snapocr" do
  version "1.1.0"
  sha256 "c2aa2f66d8b4da502ff9392338ea75b7baa88300e58b8f2be73e42842b977afb"

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
  depends_on macos: ">= :tahoe"

  app "SnapOCR.app"

  zap trash: [
    "~/Library/Application Scripts/com.shiroemons.snapocr",
    "~/Library/Caches/com.shiroemons.snapocr",
    "~/Library/Containers/com.shiroemons.snapocr",
    "~/Library/HTTPStorages/com.shiroemons.snapocr",
    "~/Library/Preferences/com.shiroemons.snapocr.plist",
  ]
end
