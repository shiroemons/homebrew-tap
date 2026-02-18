cask "sobani" do
  version "202602.15"
  sha256 "0f0d6968801f2d17b260dc3488a2b9b6f5c5da797bb5c85c5e4040d4f01f5f93"

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
