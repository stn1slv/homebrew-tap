# typed: false
# frozen_string_literal: true

class HttpProxyLogger < Formula
  desc "HTTP reverse-proxy with colored request/response logging"
  homepage "https://github.com/stn1slv/http-proxy-logger"
  version "1.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stn1slv/http-proxy-logger/releases/download/v.1.2.2/http-proxy-logger_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    if Hardware::CPU.arm?
      url "https://github.com/stn1slv/http-proxy-logger/releases/download/v.1.2.2/http-proxy-logger_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "http-proxy-logger"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/http-proxy-logger -help 2>&1", 2)
  end
end
