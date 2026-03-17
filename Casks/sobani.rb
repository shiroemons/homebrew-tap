cask "sobani" do
  version "202603.27"
  sha256 "7fc3158289d4eff1bd4350f912d3ef92c51dbb2127ec2ba06c887b21dfbbf7f7"

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
