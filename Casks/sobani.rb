cask "sobani" do
  version "202603.35"
  sha256 "f9ff67d7821bd517dce16c20c61dc22528a21ad7d337669545da798021fe619a"

  url "https://github.com/shiroemons/sobani/releases/download/v#{version}/Sobani-universal.dmg"
  name "Sobani"
  desc "Desktop mascot app that displays character images"
  homepage "https://github.com/shiroemons/sobani"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Sobani.app"

  zap trash: [
    "~/Library/Application Support/Sobani",
  ]
end
