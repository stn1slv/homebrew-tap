cask "overtype" do
  version "1.0.1"
  sha256 "5f520ea94825e1786133c0651bae909f2f6e1483bbe8dbffb42871846a5a24ed"

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
