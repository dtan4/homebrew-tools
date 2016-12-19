class Valec < Formula
  VERSION = "v0.3.2"

  desc "Handle application secrets securely"
  homepage "https://github.com/dtan4/valec"
  url "https://github.com/dtan4/valec/releases/download/#{VERSION}/valec-#{VERSION}-darwin-amd64.tar.gz"
  sha256 "1367b31e558b9abe68a8c3ce906a2a557e69b195c7191d8f5845e92110636380"

  def install
    bin.install "valec"
  end

  test do
    system "#{bin}/valec", "version"
  end
end
