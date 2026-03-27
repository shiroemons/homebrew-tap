cask "snapocr" do
  version "0.1.1"
  sha256 "3be29ff18433013dbbed6e4c23d372c5945e271d15d94b0f9634554d7c07b7bc"

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
