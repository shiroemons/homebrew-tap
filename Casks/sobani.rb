cask "sobani" do
  version "202603.25"
  sha256 "1f95d59fb7f639ce415cb919bd049476bc9242c1bd1ceca337a8b5ca3d9a7627"

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
