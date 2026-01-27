class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.9.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.11/stoptail_Darwin_arm64.tar.gz"
      sha256 "e13a7e3fafd99155d2e7682e629c1db56fbf62eeb12621758ee7c4cab3100d6e"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.11/stoptail_Darwin_x86_64.tar.gz"
      sha256 "2165c6e7fd3992b66207fb72caaeb169ae74043c05c73f2e6bf5e9861624cf13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.11/stoptail_Linux_arm64.tar.gz"
      sha256 "ede086cacda8e68bcbd0a7ce7cf81ef8b8d01083b82071001d46e18be57218cf"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.11/stoptail_Linux_x86_64.tar.gz"
      sha256 "86c1c129111c28e642244174a044fb158124a52585736ebe74871034aca7e39b"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
