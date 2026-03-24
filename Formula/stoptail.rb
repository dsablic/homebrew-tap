class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.8.2/stoptail_Darwin_arm64.tar.gz"
      sha256 "1826ea587b073627bea363e95dd58e31b61dd76e1bc5ba1ed6aad28a7a0ba7dd"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.8.2/stoptail_Darwin_x86_64.tar.gz"
      sha256 "1ad5b7e8be0264f612ed8c78a70f603a3697b648e07692abc20f5b1aec3e737f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.8.2/stoptail_Linux_arm64.tar.gz"
      sha256 "2676021be0eb3426c058b2e784b32f0e54c10bd297a91d09a5bf6e97542ca5b2"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.8.2/stoptail_Linux_x86_64.tar.gz"
      sha256 "8515ee39df2711c4ddd3ac23445e2e0f7c2f3a2b4dc996a6f2351276a8073c3a"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
