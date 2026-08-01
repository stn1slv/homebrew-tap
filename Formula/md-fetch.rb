# typed: false
# frozen_string_literal: true

class MdFetch < Formula
  desc "Extract article content from web platforms and return it as clean Markdown"
  homepage "https://github.com/stn1slv/md-fetch"
  url "https://files.pythonhosted.org/packages/c6/18/21f9b1be46231b385d13c34e49569457bbc148272e2d4418e3f67f751274/mdfetch-0.9.1.tar.gz"
  sha256 "b191565b5b727f1cf1f05221ecafe5cb8622ed52382a9e8169b0fdb85c52646e"
  license "MIT"
  revision 2

  depends_on "python@3.13"
  depends_on "uv" => :build

  uses_from_macos "libxml2"
  uses_from_macos "libxslt"

  def install
    system "uv", "tool", "install", "--no-cache", "--python", Formula["python@3.13"].opt_bin/"python3.13", "--install-dir", libexec, "--bin-dir", bin, "."
  end

  def caveats
    <<~EOS
      NOTE: Homebrew enforces a strict network sandbox during the install phase.
      If you are installing or upgrading this formula, you must bypass the sandbox:
      
          HOMEBREW_NO_SANDBOX=1 brew upgrade md-fetch
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/md-fetch --version")
  end
end
