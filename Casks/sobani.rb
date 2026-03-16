cask "sobani" do
  version "202603.20"
  sha256 "1dee34bdc69882bcde7e5ceeaa591ae6809fce24716b2c9a26bc521c6ad6bea6"

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
