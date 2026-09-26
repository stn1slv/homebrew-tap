# typed: false
# frozen_string_literal: true

class HttpProxyLogger < Formula
  desc "HTTP reverse-proxy with colored request/response logging"
  homepage "https://github.com/stn1slv/http-proxy-logger"
  version "1.2.6"
  license "MIT"

  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stn1slv/http-proxy-logger/releases/download/v1.2.6/http-proxy-logger_darwin_amd64.tar.gz"
      sha256 "f13ea30deb4f244327e7f4bf266ef31cf4589b058b9caa54d33217c3bb8229c3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/stn1slv/http-proxy-logger/releases/download/v1.2.6/http-proxy-logger_darwin_arm64.tar.gz"
      sha256 "756be5f483eef8aba570fac4199e70dbdca1f9e24dbfe8e9fa7aef6a162e6af1"
    end
  end

  def install
    bin.install "http-proxy-logger"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/http-proxy-logger -help 2>&1")
  end
end
