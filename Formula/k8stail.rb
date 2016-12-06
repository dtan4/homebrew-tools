class K8stail < Formula
  desc '`tail -f` experience for Kubernetes Pods'
  homepage "https://github.com/dtan4/k8stail"
  url "https://github.com/dtan4/k8stail/releases/download/v0.2.0/k8stail-v0.2.0-darwin-amd64.tar.gz"
  sha256 "f3b260a1294edb5da41f8027236dafbf3a31b851fd1c9fe0a94e63167050a32c"

  def install
    bin.install "k8stail"
  end

  test do
    system "#{bin}/k8stail", "-v"
  end
end
