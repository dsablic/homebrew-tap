class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.9.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.17/stoptail_Darwin_arm64.tar.gz"
      sha256 "cd0c9d23f5052d8e7c8506310be595321cd1fd549c4ab50b112348abcd03ab72"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.17/stoptail_Darwin_x86_64.tar.gz"
      sha256 "1976b4adcf80e8c349dbd9e7b08b5993dd855898c69e89fb193390df0cfa5b6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.17/stoptail_Linux_arm64.tar.gz"
      sha256 "fd3adfce9d2d26bc7500988bb28aab54de74ef028e3998f248f8cd5230d65abd"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.17/stoptail_Linux_x86_64.tar.gz"
      sha256 "bb0b82c6eaf73d41280c094357cda50208784a467b545230d1158a0073f5d358"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
