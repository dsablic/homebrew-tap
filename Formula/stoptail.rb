class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.8.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.8.3/stoptail_Darwin_arm64.tar.gz"
      sha256 "0df29db4138f1a5f218fcdd01426d250e102d07525432dc664c5ccde078702c9"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.8.3/stoptail_Darwin_x86_64.tar.gz"
      sha256 "2e7776def4915e033657a0401f3b24cfe276a597c054da380b77acb8dcbf66ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.8.3/stoptail_Linux_arm64.tar.gz"
      sha256 "ae1c61911d36c67ce9c556ba1c937e7df43323fe09b62f6fe6e7dfe6b7723125"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.8.3/stoptail_Linux_x86_64.tar.gz"
      sha256 "4b35f01777090fa9f09bd9792c6002ae686e5f90258428dbe4fd804fe2fffab3"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
