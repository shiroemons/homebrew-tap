cask "sobani" do
  version "202602.13"
  sha256 "66cb0e72277d0d2c20559d0cc7ccce188f5c15600b54e4dc5a6c84a017e49127"

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
