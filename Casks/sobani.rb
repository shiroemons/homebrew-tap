cask "sobani" do
  version "202603.24"
  sha256 "f9b473965bfdf7081e1c56d7ccd200c2ab5e24d85dbd05e2cc5e823e2a869fa1"

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
