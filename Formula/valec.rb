class Valec < Formula
  VERSION = "v0.4.0"

  desc "Handle application secrets securely"
  homepage "https://github.com/dtan4/valec"
  url "https://github.com/dtan4/valec/releases/download/#{VERSION}/valec-#{VERSION}-darwin-amd64.tar.gz"
  sha256 "34a77bc4786912525efa74b74adab9bf079f280cf1fa77141733f4c34e5c7074"

  def install
    bin.install "valec"
  end

  test do
    system "#{bin}/valec", "version"
  end
end
