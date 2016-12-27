class K8stail < Formula
  VERSION = "v0.3.0"

  desc "`tail -f` experience for Kubernetes Pods"
  homepage "https://github.com/dtan4/k8stail"
  url "https://github.com/dtan4/k8stail/releases/download/#{VERSION}/k8stail-#{VERSION}-darwin-amd64.tar.gz"
  sha256 "d293ab88f7785764f8dec161e6b673549b9a9a2017f912ac57aeddddf4f85238"

  def install
    bin.install "k8stail"
  end

  test do
    system "#{bin}/k8stail", "-v"
  end
end
