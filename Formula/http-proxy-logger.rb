# typed: false
# frozen_string_literal: true

class HttpProxyLogger < Formula
  desc "HTTP reverse-proxy with colored request/response logging"
  homepage "https://github.com/stn1slv/http-proxy-logger"
  version "1.3.0"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stn1slv/http-proxy-logger/releases/download/v1.3.0/http-proxy-logger_darwin_amd64.tar.gz"
      sha256 "db24bb05dc273e5382fddc62217c3f41131700fad3f3fc3a0ca760d129fc2ff7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/stn1slv/http-proxy-logger/releases/download/v1.3.0/http-proxy-logger_darwin_arm64.tar.gz"
      sha256 "054b4b5986f3dd66f26cdfd4204824772c25703375a430b64db344f56f6e554e"
    end
  end

  def install
    bin.install "http-proxy-logger"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/http-proxy-logger -help 2>&1")
  end
end
