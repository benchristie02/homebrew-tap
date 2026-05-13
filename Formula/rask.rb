class Rask < Formula
  desc "Internal CLI for Rask Australia (YouTube chapter generation, etc.)"
  homepage "https://github.com/benchristie02/rask-cli"
  url "https://github.com/benchristie02/rask-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "4935d83c34377bd022188f42d8ec22ac5f80cade78cc19fdf3d56fbcc2779e71"
  version "0.1.0"
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
