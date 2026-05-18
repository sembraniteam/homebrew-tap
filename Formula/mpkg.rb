class Mpkg < Formula
  desc "Generate static HTML for Go vanity import paths"
  homepage "https://github.com/sembraniteam/mpkg"
  version "0.1.1"

  url "https://github.com/sembraniteam/mpkg/releases/download/v#{version}/mpkg_#{version}_darwin_arm64.tar.gz"
  sha256 "fe98c56032b196490529b2468f8b98c5040ab96f7301af8e1cb0db9403f87e33"

  def install
    bin.install "mpkg"
  end

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  test do
    system "#{bin}/mpkg", "--help"
  end
end