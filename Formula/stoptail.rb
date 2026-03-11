class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.7.1/stoptail_Darwin_arm64.tar.gz"
      sha256 "e397de818f731afcaea4a8bdda098d66697adf19c8e12a0261bbe52ed4f3c29a"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.7.1/stoptail_Darwin_x86_64.tar.gz"
      sha256 "3be9f16df6f8ac20783e3a125874a7908aeb343ff94ecdb4aee8507a65d6248e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.7.1/stoptail_Linux_arm64.tar.gz"
      sha256 "90fa85b8dc0f2319c98d66311a5cb400a4a549e139651f28f02ca2065a9d7faf"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.7.1/stoptail_Linux_x86_64.tar.gz"
      sha256 "8ab5eb0611f9db04e4fb8f86f22cbd1db678914d6b1b3fe40ad1402e3f6122e4"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
