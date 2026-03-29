cask "snapocr" do
  version "0.1.8"
  sha256 "c43ef20ea6aa9c10c627a92ece81b277305687bda5a88aa8124ed72a31169947"

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
