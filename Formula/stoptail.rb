class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.9.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.13/stoptail_Darwin_arm64.tar.gz"
      sha256 "637ef41368b6ba205ea72081c3fc808249bdbb0f9ca643819b6cebfde38755ab"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.13/stoptail_Darwin_x86_64.tar.gz"
      sha256 "f9dc99051b640133a9001346fde46ab149b582597b98cc21829d298c9ca46b91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.13/stoptail_Linux_arm64.tar.gz"
      sha256 "edc4896ed78acddb804ee3fd4c41c03ab3ff7a5d93ecfacf4bd6ebbabd1a0cb9"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.13/stoptail_Linux_x86_64.tar.gz"
      sha256 "028566f1278e986e60a65d9a4260ecea5a7a2f15187dcc86a693e65aeae79dd5"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
