cask "sobani" do
  version "202602.7"
  sha256 "19b119a0631f52cede3910fa52b086b8e6e6df7cc801cee09491e89fe0781fe0"

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
