cask "snapocr" do
  version "0.1.7"
  sha256 "897a2c712a704684c5bc843fbda28fe9d674d7485eca3b44d99ad6986b06d806"

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
