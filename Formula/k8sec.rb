# This file was generated by GoReleaser. DO NOT EDIT.
class K8sec < Formula
  desc "CLI tool to manage Kubernetes Secrets easily"
  homepage "https://github.com/dtan4/k8sec"
  version "0.7.0"

  if OS.mac?
    url "https://github.com/dtan4/k8sec/releases/download/v0.7.0/k8sec_Darwin_x86_64.tar.gz"
    sha256 "31c7e220155bde9a5a40a586d52bedb8a48d56c35351fa52a297fff3109b8541"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/dtan4/k8sec/releases/download/v0.7.0/k8sec_Linux_x86_64.tar.gz"
      sha256 "99964f91c3ac2b4616d2d58e91a51d24e23001707400152b6f56f052116f82cb"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/dtan4/k8sec/releases/download/v0.7.0/k8sec_Linux_arm64.tar.gz"
        sha256 "c12805484fc9fd3d527c4bbdfbf0e2e0d0c95b840fb91adb7df76a6a82bcafa0"
      else
        url "https://github.com/dtan4/k8sec/releases/download/v0.7.0/k8sec_Linux_armv6.tar.gz"
        sha256 "0eb84d51fbb7e8fb9f0c6b898be36604706d06fb5bda6da06d45484fb13eb975"
      end
    end
  end

  def install
    bin.install "k8sec"
  end

  test do
    system "#{bin}/k8sec", "version"
  end
end
