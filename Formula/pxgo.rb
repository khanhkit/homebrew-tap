class Pxgo < Formula
  desc "HTTP/HTTPS proxy with NTLM and Kerberos authentication"
  homepage "https://github.com/khanhkit/pxgo"
  license "MIT"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/khanhkit/pxgo/releases/download/v0.9.0/pxgo_darwin_arm64.tar.gz"
      sha256 "f15c7f270c7bcc2d65f2eba8a817e6c1aaafa9ba245506e4e399c85335b6323e"
    else
      url "https://github.com/khanhkit/pxgo/releases/download/v0.9.0/pxgo_darwin_amd64.tar.gz"
      sha256 "442464ddb34a29171b7ff3d6b8ab7ff21374e8e88e99a7f4857dc2fd7528a189"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/khanhkit/pxgo/releases/download/v0.9.0/pxgo_linux_arm64.tar.gz"
      sha256 "17c830e4cac8f46434108086570eae609f7961e28fae5d6c72378aca7827f320"
    else
      url "https://github.com/khanhkit/pxgo/releases/download/v0.9.0/pxgo_linux_amd64.tar.gz"
      sha256 "d9f11aba3f887eb7b7e2e247bb099c270f99b637eedf4c1bcda946847a1d8e94"
    end
  end

  def install
    bin.install "pxgo"
  end

  test do
    system "#{bin}/pxgo", "--version"
  end
end
