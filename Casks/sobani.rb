cask "sobani" do
  version "202603.3"
  sha256 "abb096bc05a1bffeeb778602d3ff5dfa16d8ef5e5091fa685cd6afd73ad2b05c"

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
