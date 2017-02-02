class K8stail < Formula
  VERSION = "0.3.0".freeze

  desc "`tail -f` experience for Kubernetes Pods"
  homepage "https://github.com/dtan4/k8stail"
  url "https://github.com/dtan4/k8stail/releases/download/v#{VERSION}/k8stail-v#{VERSION}-darwin-amd64.tar.gz"
  version VERSION
  sha256 "d293ab88f7785764f8dec161e6b673549b9a9a2017f912ac57aeddddf4f85238"

  def install
    bin.install "k8stail"
  end

  test do
    system "#{bin}/k8stail", "-v"
  end
end
