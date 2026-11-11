class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.10.1/stoptail_Darwin_arm64.tar.gz"
      sha256 "7b6762edd54dbdab806d937c71ad8f2c405babb74e4dcea3408cb82c6073f5bb"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.10.1/stoptail_Darwin_x86_64.tar.gz"
      sha256 "2cfb13806f28f2dc5c014437559e75bad39f10af6d963aaa3ba12d2c2a313aeb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.10.1/stoptail_Linux_arm64.tar.gz"
      sha256 "f90b66b0f68d5c494f7ea841fb93f05c475c9e6ba6b65f31699481346d796e3c"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.10.1/stoptail_Linux_x86_64.tar.gz"
      sha256 "6c816d54541b5ba6d63606bbdab21617e77871e4fa7d21978043dbdb73368421"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
