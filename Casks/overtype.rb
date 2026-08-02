cask "overtype" do
  version "1.1.3"
  sha256 "8d404da59f96f47024403e0545e73090fcfc27b362ae2eee735ab4d618ef4f18"

  url "https://github.com/stn1slv/overtype/releases/download/v#{version}/Overtype_#{version}_macos.zip"
  name "Overtype"
  desc "AI text transformation utility that types in place via Accessibility API"
  homepage "https://github.com/stn1slv/overtype"

  app "Overtype.app"

  zap trash: [
    "~/Library/Application Support/Overtype",
    "~/Library/Preferences/com.github.stn1slv.Overtype.plist",
  ]
end
