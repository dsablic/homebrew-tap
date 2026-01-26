class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.9.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.5/stoptail_Darwin_arm64.tar.gz"
      sha256 "dbde6300e1f208b787755bcdd15e35d7085bd8a07ee4bb0e4795f8c2beac309f"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.5/stoptail_Darwin_x86_64.tar.gz"
      sha256 "5499226172ba5a506a86c7a8480127b264bdacf7c345ba66847ef031c5274b62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.5/stoptail_Linux_arm64.tar.gz"
      sha256 "377cf98be5cdcffa8a3b86aacc0feaaa3ef90f08bb32650ff582bfabdae4c1c3"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.5/stoptail_Linux_x86_64.tar.gz"
      sha256 "6efea03ed2d63a5d4e82b34c61ca6c8ab86e96e077de770968fef168e8984cc6"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
