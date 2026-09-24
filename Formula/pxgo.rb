class Pxgo < Formula
  desc "HTTP/HTTPS proxy with NTLM and Kerberos authentication"
  homepage "https://github.com/khanhkit/pxgo"
  license "MIT"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/khanhkit/pxgo/releases/download/v0.6.0/pxgo_darwin_arm64.tar.gz"
      sha256 "e028f934013fdb63e8482149125337f7b5e2d765a60599f35db3fadb59f8fe17"
    else
      url "https://github.com/khanhkit/pxgo/releases/download/v0.6.0/pxgo_darwin_amd64.tar.gz"
      sha256 "8edb9a9618307eb4d5e05f5432ccd1c54915122cca0d3232f8342cdd87a4c3a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/khanhkit/pxgo/releases/download/v0.6.0/pxgo_linux_arm64.tar.gz"
      sha256 "602010459b8fb6f1a74cea8018f8b44dbab14ae0afb144e66419faaf9ea36bce"
    else
      url "https://github.com/khanhkit/pxgo/releases/download/v0.6.0/pxgo_linux_amd64.tar.gz"
      sha256 "243e0d553544040220984220d2a8d4af17c10e245e9b6ad7650cdb75f70f4d11"
    end
  end

  def install
    bin.install "pxgo"
  end

  test do
    system "#{bin}/pxgo", "--version"
  end
end
