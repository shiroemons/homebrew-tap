cask "sobani" do
  version "202611.0"
  sha256 "d5b5591a06cc7d97b0fe51d1fa865b0e7bfd3b4740d5b778caab3d5219fdc5f6"

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
