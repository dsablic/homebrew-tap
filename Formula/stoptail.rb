class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.1/stoptail_Darwin_arm64.tar.gz"
      sha256 "4157dccba5cf4bebb57bfe8cb2fd37f5df750a0ba8f695745e403f918f755eb8"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.1/stoptail_Darwin_x86_64.tar.gz"
      sha256 "ae62f3028f87ad1237cb9e95b810197f8cae784674a7acf773ec49e078db3f12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.1/stoptail_Linux_arm64.tar.gz"
      sha256 "cba8f4371a81a60b3b026de773e6b1371ecc264db6290451ee6c6ac533d803fa"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.1/stoptail_Linux_x86_64.tar.gz"
      sha256 "9861bfd5f079f0c6e972dcfbbd67d11a0d3608d380b2483ac19c92754d16b922"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
