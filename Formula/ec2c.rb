class Ec2c < Formula
  VRESION = "0.1.1".freeze

  desc "Simple AWS EC2 CLI"
  homepage "https://github.com/dtan4/ec2c"
  url "https://github.com/dtan4/ec2c/releases/download/v#{VERSION}/ec2c-v#{VERSION}-darwin-amd64.tar.gz"
  version VERSION
  sha256 "85d422e4e65b456c11b200603b04429693c3d494f3f531b0791f18f13df5d44f"

  def install
    bin.install "ec2c"
  end

  test do
    system "#{bin}/ec2c", "-v"
  end
end
