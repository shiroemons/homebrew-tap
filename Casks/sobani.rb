cask "sobani" do
  version "202603.41"
  sha256 "eff2adabdca733e1670ec55fe6f8780f17d5dd632b29c6c30ae7f77a53fbf1d3"

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
