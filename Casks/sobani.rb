cask "sobani" do
  version "202602.18"
  sha256 "24791c4490182794259bcfd9a78c1f8e197cf4a23ab5ebcdfb03bf8a5ca5ab6f"

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
