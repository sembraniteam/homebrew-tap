class Mpkg < Formula
  desc "Generate static HTML for Go vanity import paths"
  homepage "https://github.com/sembraniteam/mpkg"
  url "https://github.com/sembraniteam/mpkg/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "7421266d9b088f33d7a4d93707406983f9f52e09b838ab6a34b75faeb98b3ae1"
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
    system bin/"mpkg", "--help"
  end
end
