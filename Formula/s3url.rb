class S3url < Formula
  desc "Generate S3 object pre-signed URL in one command"
  homepage "https://github.com/dtan4/s3url"
  url "https://github.com/dtan4/s3url/releases/download/v0.3.1/s3url-v0.3.1-darwin-amd64.tar.gz"
  sha256 "cabdcea887ec566c00d3a615d8439e299a32f12e70b3a64f1d2a702ac3ca0c59"

  def install
    bin.install "s3url"
  end

  test do
    system "#{bin}/s3url", "-v"
  end
end
