cask "sobani" do
  version "202603.19"
  sha256 "ddb237c67c93e818a6f2c5dcd5376d22b11fa04e0e7f9c81d9c67297b792dd4d"

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
