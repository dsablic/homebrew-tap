class Domains < Formula
  desc "CLI tool to list DNS records from Cloudflare and AWS Route53"
  homepage "https://github.com/dsablic/domains-cli"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/domains-cli/releases/download/v2.1.0/domains-cli_darwin_arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/dsablic/domains-cli/releases/download/v2.1.0/domains-cli_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/domains-cli/releases/download/v2.1.0/domains-cli_linux_arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/dsablic/domains-cli/releases/download/v2.1.0/domains-cli_linux_amd64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "domains"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/domains --help")
  end
end
