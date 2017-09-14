class K8stail < Formula
  VERSION = "0.5.1".freeze

  desc "`tail -f` experience for Kubernetes Pods"
  homepage "https://github.com/dtan4/k8stail"
  url "https://github.com/dtan4/k8stail/releases/download/v#{VERSION}/k8stail-v#{VERSION}-darwin-amd64.tar.gz"
  version VERSION
  sha256 "4a5685cc328c0f059f0409558e8be1943f0a7019728397729bce54c77dd19fea"

  def install
    bin.install "k8stail"
  end

  test do
    system "#{bin}/k8stail", "-v"
  end
end
