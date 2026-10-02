class Pxgo < Formula
  desc "HTTP/HTTPS proxy with NTLM and Kerberos authentication"
  homepage "https://github.com/khanhkit/pxgo"
  license "MIT"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/khanhkit/pxgo/releases/download/v0.8.1/pxgo_darwin_arm64.tar.gz"
      sha256 "ce2c58284c55ac287eb5318df9833911cdc53ad9434e73019420146741888d3c"
    else
      url "https://github.com/khanhkit/pxgo/releases/download/v0.8.1/pxgo_darwin_amd64.tar.gz"
      sha256 "82f544dd5dde1d81648fa298eb1f8d65c65f0a621966b5b7c7879c83dea07e61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/khanhkit/pxgo/releases/download/v0.8.1/pxgo_linux_arm64.tar.gz"
      sha256 "914bacd3b1b4e7a99c3cb6a43125342e30797bd3758dd5152550855104aa118c"
    else
      url "https://github.com/khanhkit/pxgo/releases/download/v0.8.1/pxgo_linux_amd64.tar.gz"
      sha256 "c8b85c28bef27920bd9fd1e7db6ec147e8c7f10327ba70e035a3de2baa3135ed"
    end
  end

  def install
    bin.install "pxgo"
  end

  test do
    system "#{bin}/pxgo", "--version"
  end
end
