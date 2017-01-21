class Ghrls < Formula
  VERSION = "v0.1.0"

  desc "List & Describe GitHub Releases"
  homepage "https://github.com/dtan4/ghrls"
  url "https://github.com/dtan4/ghrls/releases/download/#{VERSION}/ghrls-#{VERSION}-darwin-amd64.tar.gz"
  sha256 "58b246d98f06c3fb052a0b92f2d2ef6b192fbe302d7405f7ea11ef72001f20f6"

  def install
    bin.install "ghrls"
  end

  test do
    system "#{bin}/ghrls", "version"
  end
end
