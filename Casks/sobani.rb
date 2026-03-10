cask "sobani" do
  version "202603.13"
  sha256 "bb1b324f95cd6636d5f31e313e421dbd3efa4cd05c0244dba666bdd0e8e8a5bd"

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
