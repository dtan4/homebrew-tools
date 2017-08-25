class K8sec < Formula
  VERSION = "0.5.1".freeze

  desc "CLI tool to manage Kubernetes Secrets easily"
  homepage "https://github.com/dtan4/k8sec"
  url "https://github.com/dtan4/k8sec/releases/download/v#{VERSION}/k8sec-v#{VERSION}-darwin-amd64.tar.gz"
  version VERSION
  sha256 "007e658082cd01a1326822519ef10af993a91102751edd21babe23ce3f923cab"

  def install
    bin.install "k8sec"
  end

  test do
    system "#{bin}/k8sec", "version"
  end
end
