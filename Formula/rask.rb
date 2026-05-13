class Rask < Formula
  desc "Internal CLI for Rask Australia (YouTube chapter generation, etc.)"
  homepage "https://github.com/benchristie02/rask-cli"
  url "https://github.com/benchristie02/rask-cli/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "a2e39303761e7e9061d2ef17b50545667eb33d8bd6abc6a9da0629cec2cf3e1b"
  version "0.1.4"
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
