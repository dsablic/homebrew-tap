class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.9.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.15/stoptail_Darwin_arm64.tar.gz"
      sha256 "089d4048211ca14a8e9fdd8c61868c7a60a9d8681e323d570198ef5ec4fca25f"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.15/stoptail_Darwin_x86_64.tar.gz"
      sha256 "4a88dd714516f613c18beaec462e72a686fc740e442a8bfaba6569e88b99afcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.15/stoptail_Linux_arm64.tar.gz"
      sha256 "4b113bb228d7adb4e49dbfa5e1042a8d19c550e36f0e041979b3cc69f22caac5"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.15/stoptail_Linux_x86_64.tar.gz"
      sha256 "a4f7eabcefc498000f1135987fca265e24ad716e01290aa82b01b098135645ee"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
