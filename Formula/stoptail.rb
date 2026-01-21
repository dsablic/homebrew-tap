class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.1.4/stoptail_Darwin_arm64.tar.gz"
      sha256 "cfe7a7b43f28099bcebcbbc9d3e212af993c1ad8a41d085c8ba17e72198aef6c"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.1.4/stoptail_Darwin_x86_64.tar.gz"
      sha256 "06a8c9f9bbc4bb60db73d0f855037c885b6f64b52e73695bf4109e2d6a5c68c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.1.4/stoptail_Linux_arm64.tar.gz"
      sha256 "5b1ecb2887697fc1f3b83a67448a020ff4008c50ebe39812bc91a6112a45213c"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.1.4/stoptail_Linux_x86_64.tar.gz"
      sha256 "b5ad9927264af313ff69e1bf391bfe53a9a88c2ceba96fbde112c9694cc83b0e"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
