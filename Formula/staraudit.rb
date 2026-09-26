# typed: false
# frozen_string_literal: true

class Staraudit < Formula
  desc "Detect fake GitHub stars by analyzing star history bursts"
  homepage "https://github.com/stn1slv/StarAudit"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stn1slv/StarAudit/releases/download/v2.0.3/staraudit-darwin-amd64"
      sha256 "bcf46cb34f536984c81c2e83e022758ac710386864f4b573e40aa66f86e8d1c5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/stn1slv/StarAudit/releases/download/v2.0.3/staraudit-darwin-arm64"
      sha256 "71994bd305daa427c78da3bc30ffb81eb995602d77a2fe7a47f5d8be729ba54e"
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
