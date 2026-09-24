class Pxgo < Formula
  desc "HTTP/HTTPS proxy with NTLM and Kerberos authentication"
  homepage "https://github.com/khanhkit/pxgo"
  license "MIT"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/khanhkit/pxgo/releases/download/v0.5.1/pxgo_darwin_arm64.tar.gz"
      sha256 "f9df209c10b22a6065f80ff931bfeec2cfee867a9b75c8a204e74e1952a6725d
1ab9ef841b16130ed1a0ab62238bef1197ab6b15d5b35fa659d9eed9d40c75c2"
    else
      url "https://github.com/khanhkit/pxgo/releases/download/v0.5.1/pxgo_darwin_amd64.tar.gz"
      sha256 "12b5e5b8dfe0040ef3bbd010c28937eaa2cdc9a57f24879f7baa98b99b5d8dce
f62787e29396433ea9d2b692cb24848d014ea714a369c8a23f1c3f6fdd0eeac9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/khanhkit/pxgo/releases/download/v0.5.1/pxgo_linux_arm64.tar.gz"
      sha256 "94d17e759f0354574e524882512980d758e1f469996746b2fd6fbf538a0e2328
288b89628fe254a2e011924f119ceb510b8e6981a3ae90c9afb127a3d118869d"
    else
      url "https://github.com/khanhkit/pxgo/releases/download/v0.5.1/pxgo_linux_amd64.tar.gz"
      sha256 "d6a5b85892eb2cfccdd8dd20a593ac7b43e5a8c862631703eedbe27e48c51706
3da782d92a6663ea7cf9ec56062132a3da778862eda0f5a43dbfd1209e042989"
    end
  end

  def install
    bin.install "pxgo"
  end

  test do
    system "#{bin}/pxgo", "--version"
  end
end
