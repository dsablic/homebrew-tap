class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.4/stoptail_Darwin_arm64.tar.gz"
      sha256 "0930bb8027e0e4b39d64c0cd78523de8f33d26511342c36956892f4eda671ce7"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.4/stoptail_Darwin_x86_64.tar.gz"
      sha256 "1b92ebf4ceb2d288eadc8cdbb3e5fc47ff13315d38e55f4f53bf2f7016b6f1e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.4/stoptail_Linux_arm64.tar.gz"
      sha256 "6e7874e63b93a9c66f504df5e41a96f8f6da0a0e8cef987afc4e2104298924b4"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.4/stoptail_Linux_x86_64.tar.gz"
      sha256 "7d4430b7bb28cc208c0a79ce5ab5631d3880b2fcce456494a90274f71ee88409"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
