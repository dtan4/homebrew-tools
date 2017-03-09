class Valec < Formula
  VERSION = "0.6.2".freeze

  desc "Handle application secrets securely"
  homepage "https://github.com/dtan4/valec"
  url "https://github.com/dtan4/valec/releases/download/v#{VERSION}/valec-darwin-amd64-v#{VERSION}.tar.gz"
  version VERSION
  sha256 "5538808888f85c86ca2194c8c5919a2d342988cb203d203e37c2287c91430333"

  def install
    bin.install "valec"
  end

  test do
    system "#{bin}/valec", "version"
  end
end
