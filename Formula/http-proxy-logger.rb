# typed: false
# frozen_string_literal: true

class HttpProxyLogger < Formula
  desc "HTTP reverse-proxy with colored request/response logging"
  homepage "https://github.com/stn1slv/http-proxy-logger"
  version "1.2.3"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stn1slv/http-proxy-logger/releases/download/v.1.2.3/http-proxy-logger_darwin_amd64.tar.gz"
      sha256 "15f52f3918c480513f92bd8c36d4c4f9ea5bd0bad59d7482f3bb5eac84c5ce96"
    end
    if Hardware::CPU.arm?
      url "https://github.com/stn1slv/http-proxy-logger/releases/download/v.1.2.3/http-proxy-logger_darwin_arm64.tar.gz"
      sha256 "8796dc1f0801ac35211f143bb0df88036c966212f7431046982a2ed70475408f"
    end
  end

  def install
    bin.install "http-proxy-logger"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/http-proxy-logger -help 2>&1")
  end
end
