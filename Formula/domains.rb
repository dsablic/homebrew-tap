class Domains < Formula
  desc "CLI tool to list DNS records from Cloudflare and AWS Route53"
  homepage "https://github.com/dsablic/domains-cli"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/domains-cli/releases/download/v2.0.0/domains-cli_darwin_arm64.tar.gz"
      sha256 "6ca303ab2074a8d260b6d62d93447e6a8c9de4e7286f5b355b043e9d234a4017"
    else
      url "https://github.com/dsablic/domains-cli/releases/download/v2.0.0/domains-cli_darwin_amd64.tar.gz"
      sha256 "6a8e3bc8677ff65c25e138d94201c398bc3354c616a2e4cdbfa3e55036d0aec4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/domains-cli/releases/download/v2.0.0/domains-cli_linux_arm64.tar.gz"
      sha256 "793a89d7526f907c0eb3f5e540722cff26a374bef1e6367ea39ee985855c8337"
    else
      url "https://github.com/dsablic/domains-cli/releases/download/v2.0.0/domains-cli_linux_amd64.tar.gz"
      sha256 "f747afc1340bb6fec8d6b050f7bb57a8cd91515607fdac037f18761820ab2fe7"
    end
  end

  def install
    bin.install "domains"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/domains --help")
  end
end
