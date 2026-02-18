class Codemium < Formula
  desc "Generate code statistics across Bitbucket and GitHub repositories"
  homepage "https://github.com/dsablic/codemium"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/codemium/releases/download/v0.2.0/codemium_Darwin_arm64.tar.gz"
      sha256 "67c43b9259fe3753804bbe0b71975bf115e1302a3c652f7c1ff1824f62e3c023"
    else
      url "https://github.com/dsablic/codemium/releases/download/v0.2.0/codemium_Darwin_x86_64.tar.gz"
      sha256 "251a0734c5e33ca136e57779afd9217f82a0b268e9b613c54a0913d0c356677d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/codemium/releases/download/v0.2.0/codemium_Linux_arm64.tar.gz"
      sha256 "d0883c270df2cf890711282980890009441a58861acd8babc4c8e43b6fbea2ee"
    else
      url "https://github.com/dsablic/codemium/releases/download/v0.2.0/codemium_Linux_x86_64.tar.gz"
      sha256 "8e0ef0b7b5d1b5fbc0065c082a801e97881c33b67e18987d01ab36510176a336"
    end
  end

  def install
    bin.install "codemium"
  end

  test do
    assert_match "codemium", shell_output("#{bin}/codemium --version")
  end
end
