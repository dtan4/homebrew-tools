class K8sec < Formula
  VERSION = "0.5.0".freeze

  desc "CLI tool to manage Kubernetes Secrets easily"
  homepage "https://github.com/dtan4/k8sec"
  url "https://github.com/dtan4/k8sec/releases/download/v#{VERSION}/k8sec-v#{VERSION}-darwin-amd64.tar.gz"
  version VERSION
  sha256 "d8a897842a7eb7a0f99331545fda621e7d3db01287e5ea0bab6981ff62214be9"

  def install
    bin.install "k8sec"
  end

  test do
    system "#{bin}/k8sec", "version"
  end
end
