class Pxgo < Formula
  desc "HTTP/HTTPS proxy with NTLM and Kerberos authentication"
  homepage "https://github.com/khanhkit/pxgo"
  license "MIT"
  version "0.8.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/khanhkit/pxgo/releases/download/v0.8.2/pxgo_darwin_arm64.tar.gz"
      sha256 "0aed541a8d53196e82f42d303be8c33687fb1c582c4a9f40a8e0b9b477f3f6e5"
    else
      url "https://github.com/khanhkit/pxgo/releases/download/v0.8.2/pxgo_darwin_amd64.tar.gz"
      sha256 "e2b31d3b4cd39a034598094f279e6ff17ee5672506e5caea74951a6350190d6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/khanhkit/pxgo/releases/download/v0.8.2/pxgo_linux_arm64.tar.gz"
      sha256 "4d18cf5d9e1c557380c85bd4046539eb2290df01da5090b343fa3a48e552452b"
    else
      url "https://github.com/khanhkit/pxgo/releases/download/v0.8.2/pxgo_linux_amd64.tar.gz"
      sha256 "c37c04ef42e19ae51898f23f57913087ced2a59f8338b1db4e3430eba90c131a"
    end
  end

  def install
    bin.install "pxgo"
  end

  test do
    system "#{bin}/pxgo", "--version"
  end
end
