class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.2/stoptail_Darwin_arm64.tar.gz"
      sha256 "91732f20ca11b243f3ee0b706bb088bc7fb288487c88045aba0c2a714c1c2e71"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.2/stoptail_Darwin_x86_64.tar.gz"
      sha256 "791fdff85c15ea0e19d2a64555c47edccdb32aadf4a2e539c47df3f9d5fac488"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.2/stoptail_Linux_arm64.tar.gz"
      sha256 "eb28dded86b4091c94ec3969af31e514068902525a9d38300c658929dc686ab0"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.2/stoptail_Linux_x86_64.tar.gz"
      sha256 "164b3074b6367859b32c264b641a66fe52ac8057807dc7452e4ea471e5646046"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
