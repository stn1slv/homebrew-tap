cask "overtype" do
  version "1.1.2"
  sha256 "88b42d5174be4b0a40a716866edfecf7e84ea8d793111fbefd2f64fa80d7a4ef"

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
