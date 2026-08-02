cask "overtype" do
  version "1.1.1"
  sha256 "1f64aac2885a078bbbf7c51a74c4bdf8d7681bf8ec255ca97de8f8c4a2f0515d"

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
