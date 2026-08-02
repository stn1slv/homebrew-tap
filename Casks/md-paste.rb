cask "md-paste" do
  version "1.4.0"
  sha256 "e888db8f0f3b7ce3c29d86c374c565b1e2c19984c96713ae4f8054ea0bccf15d"

  url "https://github.com/stn1slv/md-paste/releases/download/v#{version}/md-paste_#{version}_macos.zip"
  name "md-paste"
  desc "Menu bar app to convert clipboard rich text to Markdown"
  homepage "https://github.com/stn1slv/md-paste"

  app "md-paste.app"

  uninstall quit:      "com.stn1slv.md-paste",
            launchctl: "com.stn1slv.md-paste"

  zap trash: [
    "~/Library/LaunchAgents/com.stn1slv.md-paste.plist",
  ]

  caveats <<~EOS
    md-paste.app is ad-hoc signed and not notarized. On first launch macOS
    Gatekeeper may block it. If so, remove the quarantine attribute:
      xattr -dr com.apple.quarantine "#{appdir}/md-paste.app"
  EOS
end
