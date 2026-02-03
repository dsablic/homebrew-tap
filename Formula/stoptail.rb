class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.3/stoptail_Darwin_arm64.tar.gz"
      sha256 "597001e4f9b6d0d75d1dbf881dcb3a9f35a8d71d09423db1e003111f1ed08e83"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.3/stoptail_Darwin_x86_64.tar.gz"
      sha256 "6582310812bcae23bd15a7d6ce09b5c47280e746cd4592a7c2514c6dd279e02b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.3/stoptail_Linux_arm64.tar.gz"
      sha256 "b924b9c3bda94fb9b67385eb8f53f7de2893a969b62a6cec0df3bac4e3f3ca90"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.3/stoptail_Linux_x86_64.tar.gz"
      sha256 "3ba211be9572fc5aa3676ea2354bfac7088b2a88cd40551f10797e2f1b965eff"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
