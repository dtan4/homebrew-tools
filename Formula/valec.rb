class Valec < Formula
  desc "Handle application secrets securely"
  homepage "https://github.com/dtan4/valec"
  url "https://github.com/dtan4/valec/releases/download/v0.2.1/valec-v0.2.1-darwin-amd64.tar.gz"
  sha256 "11c92e70fbebbf24809d8986ac635e09a0fd9843bdaac8b0fabd5444eb4fea8c"

  def install
    bin.install "valec"
  end

  test do
    system "#{bin}/valec", "version"
  end
end
