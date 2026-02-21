cask "sobani" do
  version "202602.21"
  sha256 "1a3eca79e783a6507a9516210dd565b9d2b23aefef33a4cd76be6dea38541d61"

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
