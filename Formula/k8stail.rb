class K8stail < Formula
  VERSION = "0.5.1".freeze

  desc "`tail -f` experience for Kubernetes Pods"
  homepage "https://github.com/dtan4/k8stail"
  url "https://github.com/dtan4/k8stail/releases/download/v#{VERSION}/k8stail-v#{VERSION}-darwin-amd64.tar.gz"
  version VERSION
  sha256 "66cda739f7014ee976a92ba4d32f14956936b5bcd02192dc1e906592167bd714"

  def install
    bin.install "k8stail"
  end

  test do
    system "#{bin}/k8stail", "-v"
  end
end
