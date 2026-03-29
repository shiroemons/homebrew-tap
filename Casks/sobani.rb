cask "sobani" do
  version "202603.52"
  sha256 "786233e7c205e1fcfa78b1b3fa1753ac3f89516071aa3a0331d814ebf5eb85b0"

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
