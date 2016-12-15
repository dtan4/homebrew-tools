class Valec < Formula
  desc "Handle application secrets securely"
  homepage "https://github.com/dtan4/valec"
  url "https://github.com/dtan4/valec/releases/download/v0.3.1/valec-v0.3.1-darwin-amd64.tar.gz"
  sha256 "c81a5f49f23fe5be19e8078feba9a6e8cb1e5220ad8100585e61b6acc94b1c80"

  def install
    bin.install "valec"
  end

  test do
    system "#{bin}/valec", "version"
  end
end
