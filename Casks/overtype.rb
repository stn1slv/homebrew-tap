cask "overtype" do
  version "1.0.0"
  sha256 "a6d59ef1510a16e58f601f80ab0df6fd1f44a0fbb170e6f6a5113bbf942b82bb"

  url "https://github.com/stn1slv/overtype/releases/download/v#{version}/Overtype_#{version}_macos.zip"
  name "Overtype"
  desc "AI text transformation utility that types in place via Accessibility API"
  homepage "https://github.com/stn1slv/overtype"

  app "Overtype.app"

  zap trash: [
    "~/Library/Application Support/Overtype",
    "~/Library/Preferences/com.example.Overtype.plist",
  ]
end
