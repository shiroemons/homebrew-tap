cask "sobani" do
  version "202603.31"
  sha256 "8618764e8dbdba4edbd1578beab3485e9cd45e74520e59edb69583375c72c586"

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
