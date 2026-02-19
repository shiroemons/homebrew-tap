cask "sobani" do
  version "202602.20"
  sha256 "edae80367c104c912e6636ce5c5ec08d3df94bfdbb5064da7adf4513216074fb"

  url "https://github.com/shiroemons/sobani/releases/download/v#{version}/Sobani-universal.zip"
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
