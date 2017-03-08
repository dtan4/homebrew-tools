class S3url < Formula
  VERSION = "1.0.0".freeze

  desc "Generate S3 object pre-signed URL in one command"
  homepage "https://github.com/dtan4/s3url"
  url "https://github.com/dtan4/s3url/releases/download/v#{VERSION}/s3url-v#{VERSION}-darwin-amd64.tar.gz"
  version VERSION
  sha256 "402a40859ae3be3d42ea69aaa85c7b2b048c4662a20db13c8351759526dc707b"

  def install
    bin.install "s3url"
  end

  test do
    system "#{bin}/s3url", "-v"
  end
end
