cask "sobani" do
  version "202602.14"
  sha256 "db254b183a34d2a2f69bf4e3bee3b33b1776422dde5dc151019e47b8a7fcb758"

  url "https://github.com/shiroemons/sobani/releases/download/v#{version}/Sobani-#{version}-universal.zip"
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
