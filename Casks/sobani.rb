cask "sobani" do
  version "202602.3"
  sha256 "3dfd18edaa37bbbf6f29a644def19919768dd7230430dee4ac8829d5b9affa33"

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
