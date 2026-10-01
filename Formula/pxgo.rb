class Pxgo < Formula
  desc "HTTP/HTTPS proxy with NTLM and Kerberos authentication"
  homepage "https://github.com/khanhkit/pxgo"
  license "MIT"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/khanhkit/pxgo/releases/download/v0.8.0/pxgo_darwin_arm64.tar.gz"
      sha256 "e7d6e17ad95120b41d0ff7a1998c71dbb955dde31c2ff68417ab4b68ae7b9a51"
    else
      url "https://github.com/khanhkit/pxgo/releases/download/v0.8.0/pxgo_darwin_amd64.tar.gz"
      sha256 "2336a2162db59ffa654dc276229c41e132bc378588bc09d27f2ac49a9626d68a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/khanhkit/pxgo/releases/download/v0.8.0/pxgo_linux_arm64.tar.gz"
      sha256 "21cc17c864fcf949e69aeb9108fdd6225d5f0981e1391766aa622f160dfefeb7"
    else
      url "https://github.com/khanhkit/pxgo/releases/download/v0.8.0/pxgo_linux_amd64.tar.gz"
      sha256 "36eb9c5ad66fa2bf0f76070dc8dc75dfd36c14ffe55518a5002c3a5dec545d9b"
    end
  end

  def install
    bin.install "pxgo"
  end

  test do
    system "#{bin}/pxgo", "--version"
  end
end
