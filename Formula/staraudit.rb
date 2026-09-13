# typed: false
# frozen_string_literal: true

class Staraudit < Formula
  desc "Detect fake GitHub stars by analyzing star history bursts"
  homepage "https://github.com/stn1slv/StarAudit"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stn1slv/StarAudit/releases/download/v2.0.1/staraudit-darwin-amd64"
      sha256 "6e4b6b4c4a6653690be9e15bb4c93df631346d5646c3c0bf7622f25b0b6326e9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/stn1slv/StarAudit/releases/download/v2.0.1/staraudit-darwin-arm64"
      sha256 "b308a5b6586aef83a9cc64ca87ef62838225fe803cf03ce7f969588d285b2af7"
    end
  end

  def install
    bin.install Dir["staraudit-darwin-*"].first => "staraudit"
  end

  test do
    output = shell_output("#{bin}/staraudit --json owner/ 2>&1", 1)
    assert_match "invalid_arguments", output
  end
end
