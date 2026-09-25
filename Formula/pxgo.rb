class Pxgo < Formula
  desc "HTTP/HTTPS proxy with NTLM and Kerberos authentication"
  homepage "https://github.com/khanhkit/pxgo"
  license "MIT"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/khanhkit/pxgo/releases/download/v0.7.0/pxgo_darwin_arm64.tar.gz"
      sha256 "e76a3f1df60f3159c98c9f8b34f1964721652c40fe8c04e801c5408b365d89c8"
    else
      url "https://github.com/khanhkit/pxgo/releases/download/v0.7.0/pxgo_darwin_amd64.tar.gz"
      sha256 "71b08cc668ba7da9e1d2826f3e55b6096c1cc959ea55d097c65bf781fb1dad55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/khanhkit/pxgo/releases/download/v0.7.0/pxgo_linux_arm64.tar.gz"
      sha256 "fc842faeea398e65079fd221b0409763156ce9968e55456aea849313f6834b2f"
    else
      url "https://github.com/khanhkit/pxgo/releases/download/v0.7.0/pxgo_linux_amd64.tar.gz"
      sha256 "703be97bf109ccbaf11be1e66decbd924c6e216c75b6b5adec8f89a37ec07f98"
    end
  end

  def install
    bin.install "pxgo"
  end

  test do
    system "#{bin}/pxgo", "--version"
  end
end
