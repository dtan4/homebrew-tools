class K8stail < Formula
  VERSION = "0.4.0".freeze

  desc "`tail -f` experience for Kubernetes Pods"
  homepage "https://github.com/dtan4/k8stail"
  url "https://github.com/dtan4/k8stail/releases/download/v#{VERSION}/k8stail-v#{VERSION}-darwin-amd64.tar.gz"
  version VERSION
  sha256 "0395b9223f52d5c5fde7048f451e95e88a6818bc0c16ada9f8f22be5af6fd893"

  def install
    bin.install "k8stail"
  end

  test do
    system "#{bin}/k8stail", "-v"
  end
end
