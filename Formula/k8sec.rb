class K8sec < Formula
  VERSION = "v0.2.0"

  desc "CLI tool to manage Kubernetes Secrets easily"
  homepage "https://github.com/dtan4/k8sec"
  url "https://github.com/dtan4/k8sec/releases/download/#{VERSION}/k8sec-#{VERSION}-darwin-amd64.tar.gz"
  sha256 "784ef4b85cae3c0168e5b7d944e8792312c5f67baa64fbd56d202209eeba2d0f"

  def install
    bin.install "k8sec"
  end

  test do
    system "#{bin}/k8sec", "-v"
  end
end
