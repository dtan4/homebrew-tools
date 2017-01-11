class K8sec < Formula
  VERSION = "0.3.1"

  desc "CLI tool to manage Kubernetes Secrets easily"
  homepage "https://github.com/dtan4/k8sec"
  url "https://github.com/dtan4/k8sec/releases/download/v#{VERSION}/k8sec-v#{VERSION}-darwin-amd64.tar.gz"
  sha256 "7398649043e7a9518ef4865401a78c09805b67f138cb37d729ebb1c230385050"

  def install
    bin.install "k8sec"
  end

  test do
    system "#{bin}/k8sec", "version"
  end
end
