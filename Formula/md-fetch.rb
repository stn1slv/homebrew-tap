# typed: false
# frozen_string_literal: true

class MdFetch < Formula
  desc "Extract article content from web platforms and return it as clean Markdown"
  homepage "https://github.com/stn1slv/md-fetch"
  url "https://files.pythonhosted.org/packages/c6/18/21f9b1be46231b385d13c34e49569457bbc148272e2d4418e3f67f751274/mdfetch-0.9.1.tar.gz"
  sha256 "b191565b5b727f1cf1f05221ecafe5cb8622ed52382a9e8169b0fdb85c52646e"
  license "MIT"
  revision 3

  depends_on "python@3.13"
  depends_on "uv" => :build

  uses_from_macos "libxml2"
  uses_from_macos "libxslt"

  def install
    # NOTE: Homebrew enforces a strict network sandbox during the install phase.
    # To install this formula, users must run: HOMEBREW_NO_SANDBOX=1 brew install md-fetch
    # Alternatively, you can disable the sandbox from within the ruby script (though Homebrew's sandbox-exec wraps the whole process on macOS, so setting it here only applies to child processes).
    system "uv", "tool", "install", "--no-cache", "--python", Formula["python@3.13"].opt_bin/"python3.13", "--install-dir", bin, "."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/md-fetch --version")
  end
end
