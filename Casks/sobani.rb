cask "sobani" do
  version "202602.20"
  sha256 "aaee242c6637ab51eed7ed372b75fead5979830ee7d69971a827e26408a90238"

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
