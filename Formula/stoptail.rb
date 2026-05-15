class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.9.1/stoptail_Darwin_arm64.tar.gz"
      sha256 "69bd86132d620e81c5e73fe84d19ac0b502587f5b5cbf9a19174118993858027"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.9.1/stoptail_Darwin_x86_64.tar.gz"
      sha256 "fd56ce4f530558a56e54588e938451b421273eae37d1f7fe30fe2f1433ac443c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.9.1/stoptail_Linux_arm64.tar.gz"
      sha256 "d0e542d3d36f8f3c1800e99e8452e13edd515575dd710ee11c4e9e6b773e39ed"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.9.1/stoptail_Linux_x86_64.tar.gz"
      sha256 "fb35a9acdc3d44ef7f1cd19a9dbfd8e23749439463ed6b517188afb4a1298dc9"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
