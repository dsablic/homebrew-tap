class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.0.0/stoptail_Darwin_arm64.tar.gz"
      sha256 "b27389a0c41cc5900a8fd1741f347cd0515fc0624d915b753b017ee03fa8909f"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.0.0/stoptail_Darwin_x86_64.tar.gz"
      sha256 "9449743730b45a3064d3151e2d51312b02dcd6bc62fc7da3a5002d4e9861b04e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.0.0/stoptail_Linux_arm64.tar.gz"
      sha256 "03623d91f45714fc38fc285ccaec2752a94efb758d44a6731017492d2b774b85"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.0.0/stoptail_Linux_x86_64.tar.gz"
      sha256 "04c70e006573fa32168b49cf4523ac71973dbe95545f2fbacb33fae32f55ebcc"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
