cask "sobani" do
  version "202603.14"
  sha256 "d8e02df3f2a13a716de3b6e1febc1b22a755dd7e2c28367029d5c4349ec882ad"

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
