cask "sobani" do
  version "202603.37"
  sha256 "534fe78afa6c93c9c2b638e19c6d3fd2a9d7ddcc32e4d2c42be0ae94038d57fb"

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
