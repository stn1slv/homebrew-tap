cask "md-paste" do
  version "1.4.4"
  sha256 "731cb4bc091c71579c807d3cdcfbefb174711ad866ee15adccd36e7ff7479fac"

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
