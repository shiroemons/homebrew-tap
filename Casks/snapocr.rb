cask "snapocr" do
  version "1.0.0"
  sha256 "d9e526bfe3fea2d35807aa150066659ad3aad8605c70f4d58a93c1ac25bd34e9"

  url "https://github.com/shiroemons/snapocr/releases/download/v#{version}/SnapOCR.dmg"
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
