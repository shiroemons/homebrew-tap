cask "sobani" do
  version "202602.5"
  sha256 "1f28709e251af4faa6d48a0dc86d8f8dcf46deed2a4cc3aa7b9b4cc61c48b61c"

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
