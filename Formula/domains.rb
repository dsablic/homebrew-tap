class Domains < Formula
  desc "CLI tool to list DNS records from Cloudflare and AWS Route53"
  homepage "https://github.com/dsablic/domains-cli"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/domains-cli/releases/download/v1.0.3/domains-cli_darwin_arm64.tar.gz"
      sha256 "2e82e5468ba8c091c5fceffb02d780536749d983d6b99d232581aa42d730ade1"
    else
      url "https://github.com/dsablic/domains-cli/releases/download/v1.0.3/domains-cli_darwin_amd64.tar.gz"
      sha256 "4bc46513bb0813c000f82377b66ccbf5511a4ca63d672abfb112ceb35c87cd1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/domains-cli/releases/download/v1.0.3/domains-cli_linux_arm64.tar.gz"
      sha256 "abfdbc1e724e64e7da94df8af625d75c7613a5b02682ff29a930461b457ed389"
    else
      url "https://github.com/dsablic/domains-cli/releases/download/v1.0.3/domains-cli_linux_amd64.tar.gz"
      sha256 "a4aaa7e3ad0333b339536eb581c68aa4d93b70ea180cc3f270a77cee6188d706"
    end
  end

  def install
    bin.install "domains"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/domains --help")
  end
end
