# typed: false
# frozen_string_literal: true

class Staraudit < Formula
  desc "Detect fake GitHub stars by analyzing star history bursts"
  homepage "https://github.com/stn1slv/StarAudit"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stn1slv/StarAudit/releases/download/v2.0.2/staraudit-darwin-amd64"
      sha256 "e0c7c996666727268dc3d03c5d97fd14ce652090ae53e30fa0f9ae344e8af327"
    end
    if Hardware::CPU.arm?
      url "https://github.com/stn1slv/StarAudit/releases/download/v2.0.2/staraudit-darwin-arm64"
      sha256 "0a79789fb673c36a6ac909009b8538d67280fb710b7e1ae83d66edc099bc86b9"
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
