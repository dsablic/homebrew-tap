class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.1.0/stoptail_Darwin_arm64.tar.gz"
      sha256 "0fbcb4967fecb2a5e65f01def4c73f7e39316fa119b118178a287c11b8cc5d10"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.1.0/stoptail_Darwin_x86_64.tar.gz"
      sha256 "fa5267d1afbb86310499bb513f18db7e7ce6d8979d5269048dafd515d688a1ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.1.0/stoptail_Linux_arm64.tar.gz"
      sha256 "54fd7d0d61dac6d8e85b41142618f225c36b3e78677ed8980fa63dcfb2babed6"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.1.0/stoptail_Linux_x86_64.tar.gz"
      sha256 "3a4829df73d62f8cfa030fd7f8569de16b3c600e6b6191d4747acceeea42628b"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
