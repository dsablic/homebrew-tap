class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.9.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.16/stoptail_Darwin_arm64.tar.gz"
      sha256 "9ef244d7a96656f0dbce9e0e6eefd011138920c0b4b2e46671da0d0bb5eb1eea"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.16/stoptail_Darwin_x86_64.tar.gz"
      sha256 "ef8ae2b2e3cc4aec42d0359e895fa3202ee6f40b25bca8277bc3fde7b11f2aff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.16/stoptail_Linux_arm64.tar.gz"
      sha256 "871adb6f3df34b342e9f5473f695b44920eef14cd1bffe1042ec1136df7cd47a"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.16/stoptail_Linux_x86_64.tar.gz"
      sha256 "fae69a0a9b7e463861ac15fdbae2ab1a4c0f165e7348ffc25ea383eaafbc9869"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
