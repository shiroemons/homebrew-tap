cask "sobani" do
  version "202603.33"
  sha256 "0c86dd6b8f8bcd89c3567928dfa281c3940a0c3b4130a7f1849a9ebef5654449"

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
