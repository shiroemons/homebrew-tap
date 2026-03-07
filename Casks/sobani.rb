cask "sobani" do
  version "202603.5"
  sha256 "b76ff113943c1bf0c366e90b66e9e2c26c59a1f5906e2967ca3a0447b4fb3205"

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
