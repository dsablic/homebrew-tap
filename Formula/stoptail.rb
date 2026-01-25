class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.9.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.4/stoptail_Darwin_arm64.tar.gz"
      sha256 "0b0f09c0126c2f18b424fbf15f5493b1d3682a895e09756cf2338072a98a5e91"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.4/stoptail_Darwin_x86_64.tar.gz"
      sha256 "c4c3271c6497c30403f5dfae87ae12e4ea8bd12e541f1c9eadb3d66c3d6b4eab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.4/stoptail_Linux_arm64.tar.gz"
      sha256 "51f9caaad88e9b26b18227a3cd49fcf860ec266dea3576b93727557390478d9c"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.4/stoptail_Linux_x86_64.tar.gz"
      sha256 "9a871dadb35a26aa812714b86deff5380a6d680066c64a0cacfdca0765d3dc0c"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
