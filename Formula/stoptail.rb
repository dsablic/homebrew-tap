class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.1.6/stoptail_Darwin_arm64.tar.gz"
      sha256 "d1fbaf9c04e8e76380e0a8afb654f6e152198c7caf2e4a80b335c936fca46966"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.1.6/stoptail_Darwin_x86_64.tar.gz"
      sha256 "3e4fcd000240b5d0a17cb1a5f4d5ef3292ff47682b197be460cde0d84c02661e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.1.6/stoptail_Linux_arm64.tar.gz"
      sha256 "a9c9754a2528cf30111dce479d51f062cfd7864fc9d1cc91cdbb63887f61550e"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.1.6/stoptail_Linux_x86_64.tar.gz"
      sha256 "d7ce5e1ed5017ef3691181418504d62b53506796de42fa1652d261e4fd2cf1b9"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
