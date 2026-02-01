class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.1.1/stoptail_Darwin_arm64.tar.gz"
      sha256 "a0d07c9a112673a0c6c3c104c67e9de2a436813ab4ddda613ac8e6a8a230cac8"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.1.1/stoptail_Darwin_x86_64.tar.gz"
      sha256 "c41a3bebafaf946880d0ca229b7bdae8ee1786dea8fefc667cd69946af04aeed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.1.1/stoptail_Linux_arm64.tar.gz"
      sha256 "9a7775ca0eee85a30a45e6d5d99c8eb73d1ee2373487b8e3380b161bb3641350"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.1.1/stoptail_Linux_x86_64.tar.gz"
      sha256 "8982be51b77f75da076c5340b628deb7a6386532e57ee8b15026acf431f8e010"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
