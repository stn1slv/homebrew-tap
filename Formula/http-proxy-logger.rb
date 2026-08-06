# typed: false
# frozen_string_literal: true

class HttpProxyLogger < Formula
  desc "HTTP reverse-proxy with colored request/response logging"
  homepage "https://github.com/stn1slv/http-proxy-logger"
  version "1.2.4"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stn1slv/http-proxy-logger/releases/download/v1.2.4/http-proxy-logger_darwin_amd64.tar.gz"
      sha256 "354932c7c0ae2ea51f0ff26cd71fec657bc2a766613b9f95bfd7c667ce9fa1ea"
    end
    if Hardware::CPU.arm?
      url "https://github.com/stn1slv/http-proxy-logger/releases/download/v1.2.4/http-proxy-logger_darwin_arm64.tar.gz"
      sha256 "61626976e3cdf2e8ccf53cf2b63eae77f9fb849c6ef4ecdd9613784093809e2f"
    end
  end

  def install
    bin.install "http-proxy-logger"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/http-proxy-logger -help 2>&1")
  end
end
