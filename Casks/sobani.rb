cask "sobani" do
  version "202602.17"
  sha256 "926dc9e855e4613df7fd11782b54f13addbf5790ad9593bde416593fe60e8fbe"

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
