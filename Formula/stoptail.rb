class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "v0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/vv0.2.3/stoptail_Darwin_arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/dsablic/stoptail/releases/download/vv0.2.3/stoptail_Darwin_x86_64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/vv0.2.3/stoptail_Linux_arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/dsablic/stoptail/releases/download/vv0.2.3/stoptail_Linux_x86_64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
