class Valec < Formula
  desc "Handle application secrets securely"
  homepage "https://github.com/dtan4/valec"
  url "https://github.com/dtan4/valec/releases/download/v0.3.1/valec-v0.3.1-darwin-amd64.tar.gz"
  sha256 "d9d060d81a62643b5acc727216373afa7e3d5d83faf9a9e770421c651c7307a7"

  def install
    bin.install "valec"
  end

  test do
    system "#{bin}/valec", "version"
  end
end
