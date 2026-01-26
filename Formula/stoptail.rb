class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.9.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.10/stoptail_Darwin_arm64.tar.gz"
      sha256 "cd8256d402e3cde4ab4a285e934b8b706d0c07ebe43b8e07ab5571a67232d607"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.10/stoptail_Darwin_x86_64.tar.gz"
      sha256 "faba577723d8c4ca36bebfd688a7c47d0805d55c6328c6a308565307de6d877a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.10/stoptail_Linux_arm64.tar.gz"
      sha256 "d82bec880832a8be1a789595eb77e07a5c17deefe0067e4b03213a39575ddb39"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.10/stoptail_Linux_x86_64.tar.gz"
      sha256 "1d11df6b37021376f3c8758b83a8cb6bbfdd515b6c031bf11ffae4590ab89d5e"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
