cask "sobani" do
  version "202603.51"
  sha256 "521511c7ef61171d8c0ab7b488b4c86b6ac19d0acc6f6a71669127f8c2ce0d4b"

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
