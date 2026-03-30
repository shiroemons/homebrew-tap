cask "snapocr" do
  version "0.1.12"
  sha256 "cfd5f6c2e362a3ac8de1f44f2a2871dd357cda719a3cc1d213d15b2ac3271a58"

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
