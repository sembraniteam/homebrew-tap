cask "mpkg" do
  arch arm: "arm64"
  version "0.1.1"
  sha256 "fe98c56032b196490529b2468f8b98c5040ab96f7301af8e1cb0db9403f87e33"

  url "https://github.com/sembraniteam/mpkg/releases/download/v#{version}/mpkg_#{version}_darwin_#{arch}.tar.gz"
  name "mpkg"
  desc "Generate static HTML for Go vanity import paths."
  homepage "https://github.com/sembraniteam/mpkg"

  binary "mpkg"
  
  auto_updates true

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end
end