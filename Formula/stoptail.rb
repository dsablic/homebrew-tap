class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.8.1/stoptail_Darwin_arm64.tar.gz"
      sha256 "3e5f9c8970b0586d67f448bb5aa4358f0d42131aa22338ab97c47c10b4387930"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.8.1/stoptail_Darwin_x86_64.tar.gz"
      sha256 "fcfeb84520d09b795005e1e48299927f2ea254abc845b2176fda85cbfbad0c8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.8.1/stoptail_Linux_arm64.tar.gz"
      sha256 "06b29f2e7f894e1e7e79140d818a4f38f274f3259f8e3c15d380e08c09fc0efa"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.8.1/stoptail_Linux_x86_64.tar.gz"
      sha256 "01c173328a600a8f5f3dd3fdbe22c404bb430470d48ec15ddd716dbd0cb1763a"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
