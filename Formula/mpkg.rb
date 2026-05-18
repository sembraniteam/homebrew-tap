# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Mpkg < Formula
  desc "Generate static HTML for Go vanity import paths."
  homepage "https://github.com/sembraniteam/mpkg"
  url "https://github.com/sembraniteam/mpkg/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f20edb4d4ffddb955f4cebf7100abe05fe3280a43fdf062f315d4e8b53179412"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"mpkg", "."
  end

  test do
    system "#{bin}/mpkg", "--help"
  end
end