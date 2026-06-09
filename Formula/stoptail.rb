class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.9.2/stoptail_Darwin_arm64.tar.gz"
      sha256 "7e0812e1a5e22ddceb6cbfe69e4a3b9f6a4eb33d0578330f74284a98b4fd811c"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.9.2/stoptail_Darwin_x86_64.tar.gz"
      sha256 "908d51e4860fc5cb7871ed6315d4a8b15c9a17de280e4d0710e71ab4773ac662"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.9.2/stoptail_Linux_arm64.tar.gz"
      sha256 "20c3958ae6357d51c1937fc882cc109cd0636691d6d16bf788e6b0db82852b8d"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.9.2/stoptail_Linux_x86_64.tar.gz"
      sha256 "95b3b8ca5c058be93f6ea93a432a732c6d28026d4d592b7d5f39c83fe5d8e06a"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
