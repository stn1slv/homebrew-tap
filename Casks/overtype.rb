cask "overtype" do
  version "1.2.0"
  sha256 "8a918737adf440218f4bf3852e35733ec7febdfb903639da7870649f7bec3df2"

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
