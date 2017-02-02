class Valec < Formula
  VERSION = "0.5.2"

  desc "Handle application secrets securely"
  homepage "https://github.com/dtan4/valec"
  url "https://github.com/dtan4/valec/releases/download/v#{VERSION}/valec-v#{VERSION}-darwin-amd64.tar.gz"
  version VERSION
  sha256 "a506596c3e0146ac02aa9ccbb97583f44aa1ee26c74f4d08e28c7cf7a2e3ca55"

  def install
    bin.install "valec"
  end

  test do
    system "#{bin}/valec", "version"
  end
end
