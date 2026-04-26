class Domains < Formula
  desc "CLI tool to list DNS records from Cloudflare and AWS Route53"
  homepage "https://github.com/dsablic/domains-cli"
  version "2.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/domains-cli/releases/download/v2.1.2/domains-cli_darwin_arm64.tar.gz"
      sha256 "64852ce719e22bcdcc648bb47c976e5c29dc41fb6c097f724efde9cdd9265775"
    else
      url "https://github.com/dsablic/domains-cli/releases/download/v2.1.2/domains-cli_darwin_amd64.tar.gz"
      sha256 "b89a3abe32bfd49c304d10b2651f9f19f220c4502c74cc7af577d90f1fcdad98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/domains-cli/releases/download/v2.1.2/domains-cli_linux_arm64.tar.gz"
      sha256 "7ee8e57cac2817795dacef183b725a35ff394dc2b0e1b08c36d84567cb7790bc"
    else
      url "https://github.com/dsablic/domains-cli/releases/download/v2.1.2/domains-cli_linux_amd64.tar.gz"
      sha256 "6c4eaf4222c29bb55a0069f1162f912ec957482630138e15db1fd33b9f86724c"
    end
  end

  def install
    bin.install "domains"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/domains --help")
  end
end
