class Rask < Formula
  desc "Internal CLI for Rask Australia (YouTube chapter generation, etc.)"
  homepage "https://github.com/benchristie02/rask-cli"
  url "https://github.com/benchristie02/rask-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "b34cfa8798fb1091650f1ad1e8daeb1c7adc2cac5dfeabe9ab39f6dbe4709290"
  version "0.1.1"
  license "MIT"

  depends_on "yt-dlp"
  depends_on "jq"

  def install
    bin.install "bin/rask"
  end

  test do
    assert_match "rask 0.1.0", shell_output("#{bin}/rask version")
  end
end
