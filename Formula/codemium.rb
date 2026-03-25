class Codemium < Formula
  desc "Generate code statistics across Bitbucket and GitHub repositories"
  homepage "https://github.com/dsablic/codemium"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/codemium/releases/download/v0.11.0/codemium_Darwin_arm64.tar.gz"
      sha256 "d00db03b00744a39870403acb6c73592c4def3004f480996bc76775adab42e49"
    else
      url "https://github.com/dsablic/codemium/releases/download/v0.11.0/codemium_Darwin_x86_64.tar.gz"
      sha256 "1def486742458d4403309a186833fa12d6be2768c43094311ee29120f0323ea4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/codemium/releases/download/v0.11.0/codemium_Linux_arm64.tar.gz"
      sha256 "7759f7a0236e3d474d68a4bb88ae1688ec042fe4bd1e40997eca5895affd6945"
    else
      url "https://github.com/dsablic/codemium/releases/download/v0.11.0/codemium_Linux_x86_64.tar.gz"
      sha256 "ee3b4db65c2d0fe79c369a84b82d07c54838dc5a544a56d7832b7a13eeb74a68"
    end
  end

  def install
    bin.install "codemium"
  end

  test do
    assert_match "codemium", shell_output("#{bin}/codemium --version")
  end
end
