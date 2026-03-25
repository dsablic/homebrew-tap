class Domains < Formula
  desc "CLI tool to list DNS records from Cloudflare and AWS Route53"
  homepage "https://github.com/dsablic/domains-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/domains-cli/releases/download/v1.1.0/domains-cli_darwin_arm64.tar.gz"
      sha256 "c9a52bc0796f323a2fdc5498f3058dd6c58979a6b89425d8acb8b376c49e51ce"
    else
      url "https://github.com/dsablic/domains-cli/releases/download/v1.1.0/domains-cli_darwin_amd64.tar.gz"
      sha256 "f6c77b5cf6116a203d6415ca141c73f409d1695fc005bb1bb90e784de9b0f52c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/domains-cli/releases/download/v1.1.0/domains-cli_linux_arm64.tar.gz"
      sha256 "19e9390bd284e7a3e142fa53567d61c6c23402b6a3884e557652f3ad4724d12b"
    else
      url "https://github.com/dsablic/domains-cli/releases/download/v1.1.0/domains-cli_linux_amd64.tar.gz"
      sha256 "331a19dfe695fb77f4ccda4b6b8e0c9416729c989dde0a337204d97adde8bfc0"
    end
  end

  def install
    bin.install "domains"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/domains --help")
  end
end
