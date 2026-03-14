cask "sobani" do
  version "202603.18"
  sha256 "7bce2ce7ace36a21c0fa34f4e73dc3c6097173544ccafcaaa5c1e3437cdf50a7"

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
