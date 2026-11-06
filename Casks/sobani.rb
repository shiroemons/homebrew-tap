cask "sobani" do
  version "202611.1"
  sha256 "8039aba953a5ae64f3c116889642663d1114bfd9ad0408af97ea08adef8f214c"

  url "https://github.com/shiroemons/sobani/releases/download/v#{version}/Sobani-universal.dmg"
  name "Sobani"
  desc "Desktop acrylic stand app that displays character images"
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
