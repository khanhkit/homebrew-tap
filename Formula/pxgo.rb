class Pxgo < Formula
  desc "HTTP/HTTPS proxy with NTLM and Kerberos authentication"
  homepage "https://github.com/khanhkit/pxgo"
  license "MIT"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/khanhkit/pxgo/releases/download/v0.7.1/pxgo_darwin_arm64.tar.gz"
      sha256 "881ef0bddda523992d7b54de64db4f41bd1a8228c0be5bfa849a4bd1f20050a9"
    else
      url "https://github.com/khanhkit/pxgo/releases/download/v0.7.1/pxgo_darwin_amd64.tar.gz"
      sha256 "0e89625f3144fb48231625655b4e28ecce2e703ff7bfffe289450971271de292"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/khanhkit/pxgo/releases/download/v0.7.1/pxgo_linux_arm64.tar.gz"
      sha256 "4175ef9e5c414bb3ad33cf654a1bd775f117ee6a358d70b89ac944ee3e5808b4"
    else
      url "https://github.com/khanhkit/pxgo/releases/download/v0.7.1/pxgo_linux_amd64.tar.gz"
      sha256 "4f3e6f2b857b9def9d2a39afc8b67b78317d37dab87086e344c25b5b47e1acdb"
    end
  end

  def install
    bin.install "pxgo"
  end

  test do
    system "#{bin}/pxgo", "--version"
  end
end
