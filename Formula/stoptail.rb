class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.1.7/stoptail_Darwin_arm64.tar.gz"
      sha256 "67c293f4e2f8431b57f55eeded185187405f63aa2abd9374a01821034116e494"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.1.7/stoptail_Darwin_x86_64.tar.gz"
      sha256 "0839b22525ab8823d73bac7f3ae25fd3b70a2a16977ec1e03961478685391ad6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.1.7/stoptail_Linux_arm64.tar.gz"
      sha256 "234cb1252da8502a324a595713ba2f2ffeb5c40776878d6b722999bfd6d24692"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.1.7/stoptail_Linux_x86_64.tar.gz"
      sha256 "e763d2fc3186580fb2e0bf90a8d20defd8e395807873b6ec3c9e324cbccd8c0c"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
