class Mpkg < Formula
  desc "Generate static HTML for Go vanity import paths"
  homepage "https://github.com/sembraniteam/mpkg"
  url "https://github.com/sembraniteam/mpkg/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "ecfd21192d56a0f54faa20272b4f3ecf59a7668de9c8e1f06cf4c5b12d95dc34"
  license "MIT"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w", "-o", bin/"mpkg", "."
  end

  test do
    system bin/"mpkg", "version"
  end
end
