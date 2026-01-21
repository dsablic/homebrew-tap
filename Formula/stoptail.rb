class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.1.5/stoptail_Darwin_arm64.tar.gz"
      sha256 "f1f8d0a02d5bdef64ab1e644946326580eabb8b111f6d4de1e8d19d88d0db086"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.1.5/stoptail_Darwin_x86_64.tar.gz"
      sha256 "464d315d5f5b2833d8c61e0ed78cea6de29f7c674df6b96b0837b16c463b1560"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.1.5/stoptail_Linux_arm64.tar.gz"
      sha256 "24c7a7da9dfb9163b21c5bb0d780e114c8749394a53556b4f4a14ccf1037a9e7"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.1.5/stoptail_Linux_x86_64.tar.gz"
      sha256 "8450c57fb45a53c93003cb70bc15f39f668c6f601b629258f75fe944924e0241"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
