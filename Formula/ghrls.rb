# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ghrls < Formula
  desc "List & Describe GitHub Releases"
  homepage "https://github.com/dtan4/ghrls"
  version "0.2.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/dtan4/ghrls/releases/download/v0.2.1/ghrls_Darwin_x86_64.tar.gz"
    sha256 "1c65534b89ea908f0de6caf478c4d810455e4b4501b318aef1deb25d28c86987"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/dtan4/ghrls/releases/download/v0.2.1/ghrls_Darwin_arm64.tar.gz"
    sha256 "2446ca837e74f73d037396a93b74b45f8e8a8d8b739910f0c7183edd13e22865"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/dtan4/ghrls/releases/download/v0.2.1/ghrls_Linux_x86_64.tar.gz"
    sha256 "4ee5c44e20b01c5f44151bc95465c07ad136fa5db7e4f4a019059ac1d3696509"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/dtan4/ghrls/releases/download/v0.2.1/ghrls_Linux_armv6.tar.gz"
    sha256 "f253daad92dea50b4d7eea6a53102d140b013ad1d27238c0fa77750af2d9713c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/dtan4/ghrls/releases/download/v0.2.1/ghrls_Linux_arm64.tar.gz"
    sha256 "bee3a6a9ccebca8394c2098f8d6baa4d64fdb9a90314bebc24273a3801b6817e"
  end

  def install
    bin.install "ghrls"
  end

  test do
    system "#{bin}/ghrls", "version"
  end
end
