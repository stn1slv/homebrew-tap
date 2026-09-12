# typed: false
# frozen_string_literal: true

class HttpProxyLogger < Formula
  desc "HTTP reverse-proxy with colored request/response logging"
  homepage "https://github.com/stn1slv/http-proxy-logger"
  version "1.2.5"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stn1slv/http-proxy-logger/releases/download/v1.2.5/http-proxy-logger_darwin_amd64.tar.gz"
      sha256 "4d7bbd1edfc7e1221404af788d3a1a353e044da1555cb32000be5b799da7694d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/stn1slv/http-proxy-logger/releases/download/v1.2.5/http-proxy-logger_darwin_arm64.tar.gz"
      sha256 "c79a84ef6869e8027c9809a7d1ed523ba108a8c530c629662fb300af1717d7ed"
    end
  end

  def install
    bin.install "http-proxy-logger"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/http-proxy-logger -help 2>&1")
  end
end
