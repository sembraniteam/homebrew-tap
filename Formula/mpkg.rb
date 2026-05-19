class Mpkg < Formula
  desc "Generate static HTML for Go vanity import paths"
  homepage "https://github.com/sembraniteam/mpkg"
  url "https://github.com/sembraniteam/mpkg/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "715ce05f2b8064ed7b18455fb94dc5344b43df0b275770d57b037e2ed8d19e03"
  license "MIT"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"mpkg", "."
  end

  test do
    system bin/"mpkg", "version"
  end
end
