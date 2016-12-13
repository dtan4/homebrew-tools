class K8sec < Formula
  desc "CLI tool to manage Kubernetes Secrets easily"
  homepage "https://github.com/dtan4/k8sec"
  url "https://github.com/dtan4/k8sec/releases/download/v0.1.1/k8sec-v0.1.1-darwin-amd64.tar.gz"
  sha256 "7750bf3963cf8d7d4d9549be470bbcc59456a4a0de6634cda161f7545b68dbcf"

  def install
    bin.install "k8sec"
  end

  test do
    system "#{bin}/k8sec", "-v"
  end
end
