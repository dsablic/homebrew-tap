class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.0/stoptail_Darwin_arm64.tar.gz"
      sha256 "6ad42a7d816c9033ecce1bc3f5b0b55d0e397d34a6d0fbb1b78252e3a4922e4c"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.0/stoptail_Darwin_x86_64.tar.gz"
      sha256 "65b69a510077bb01fb22f905fae190c9d20d523cbc95aa07348b8020b605e9a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.0/stoptail_Linux_arm64.tar.gz"
      sha256 "6ab0d856b00583570bc61576b4f5fc60bc1937c90aeba62335307190224c44e5"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.0/stoptail_Linux_x86_64.tar.gz"
      sha256 "c1a15aa6d79eb3a30e6facf666c29b21fef0abb39fb3d61c5a89e7071ca01536"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
